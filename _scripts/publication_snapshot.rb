# Usage: ruby _scripts/publication_snapshot.rb YYYY-MM-DD scholar.html
require 'date'
require 'fileutils'
require 'json'
require 'tempfile'
require 'uri'
require 'yaml'

PROFILE_ID = 'zHebeGsAAAAJ'
AUTHOR = 'Caterina Fuster-Barceló'

def count(text)
  digits = text.strip.delete(',')
  raise "Invalid citation count: #{text.inspect}" unless digits.match?(/\A\d+\z/)
  Integer(digits, 10)
end

def read_profile_html(path)
  require 'nokogiri'
  doc = Nokogiri::HTML(File.read(path, encoding: 'UTF-8'))
  metrics = doc.css('#gsc_rsb_st tr').to_a
  since = metrics.first&.text.to_s[/Since (\d{4})/, 1]
  abort 'Save the Google Scholar profile in English.' unless since

  all = {}
  recent = {}
  %w[citations h_index i10_index].each_with_index do |metric, index|
    cells = metrics.fetch(index + 1).css('td').to_a
    all[metric] = count(cells.fetch(1).text)
    recent[metric] = count(cells.fetch(2).text)
  end

  years = doc.css('#gsc_rsb_cit .gsc_g_t').map(&:text)
  bars = doc.css('#gsc_rsb_cit .gsc_g_a').map { |bar| count(bar.text) }
  abort 'Incomplete annual citation chart.' unless bars.size == years.size

  more = doc.at_css('#gsc_bpf_more')
  range = doc.at_css('#gsc_a_nn')&.text.to_s[/1\s*[–—-]\s*([\d,]+)/, 1]
  abort 'Expand the full article list before saving the profile.' unless more && more.key?('disabled') && range
  articles = doc.css('#gsc_a_b tr').map do |row|
    cells = row.css('td').to_a
    link = cells.fetch(0).at_css('a')
    query = URI.parse(link['href']).query
    profile, id = URI.decode_www_form(query).to_h.fetch('citation_for_view').split(':', 2)
    abort 'Unexpected Scholar profile.' unless profile == PROFILE_ID
    value = cells.fetch(1).text.strip
    article = { 'id' => id, 'title' => link.text.strip,
                'citations' => value.empty? ? 0 : count(value.delete_suffix('*')) }
    article['marked'] = true if value.end_with?('*')
    article
  end
  { 'profile_id' => PROFILE_ID, 'all' => all, 'recent' => recent, 'since_year' => since.to_i,
    'annual' => years.zip(bars).to_h, 'article_count' => count(range), 'articles' => articles }
end

abort 'Usage: publication_snapshot.rb YYYY-MM-DD scholar.html (or scholar.json)' unless ARGV.size == 2
day, input = ARGV
date = Date.iso8601(day)
abort 'Expected YYYY-MM-DD.' unless date.iso8601 == day
scholar = File.extname(input).downcase == '.json' ? JSON.parse(File.read(input)) : read_profile_html(input)
abort 'Unexpected Scholar profile.' unless scholar.fetch('profile_id') == PROFILE_ID
nonnegative = ->(n) { n.is_a?(Integer) && n >= 0 }
%w[all recent].each do |period|
  %w[citations h_index i10_index].each do |metric|
    abort "Invalid #{period} #{metric}" unless nonnegative.call(scholar.fetch(period).fetch(metric))
  end
end
abort 'Missing recent reporting window.' unless scholar.fetch('since_year').to_s.match?(/\A\d{4}\z/)
abort 'Invalid annual counts.' unless scholar.fetch('annual').all? { |y, n| y.match?(/\A\d{4}\z/) && nonnegative.call(n) }
articles = scholar.fetch('articles')
abort 'Incomplete Scholar list.' unless !articles.empty? && articles.size == scholar.fetch('article_count')
ids = articles.map do |article|
  abort 'Invalid article.' unless article.fetch('id').match?(/\A[\w-]+\z/) && !article.fetch('title').strip.empty? && nonnegative.call(article.fetch('citations'))
  article['id']
end
abort 'Duplicate Scholar ID.' unless ids == ids.uniq

root = File.expand_path('..', __dir__)
catalogue = Dir[File.join(root, '_publications/*.md')].sort.map do |path|
  meta = YAML.safe_load(File.read(path).split(/^---[ \t]*\r?$/, 3).fetch(1), permitted_classes: [Date, Time])
  next if meta['published'] == false || Date.parse(meta.fetch('date').to_s) > date
  authors = meta.fetch('authors').split(',').map(&:strip)
  { 'title' => meta.fetch('title'), 'url' => meta.fetch('permalink'), 'category' => meta.fetch('category'),
    'first_author' => authors.first == AUTHOR, 'last_author' => authors.last == AUTHOR, 'scholar_id' => meta['scholar_id'] }
end.compact
mapped_ids = catalogue.map { |paper| paper['scholar_id'] }.compact
abort 'Multiple catalogue entries use the same Scholar ID.' unless mapped_ids == mapped_ids.uniq

snapshot = { 'date' => day, 'scholar' => scholar, 'catalogue' => catalogue }
dir = File.join(root, '_data', 'publication_history')
FileUtils.mkdir_p(dir)
out = File.join(dir, day + '.json')
Tempfile.create(['snapshot-', '.tmp'], dir) do |file|
  file.puts JSON.pretty_generate(snapshot)
  file.close
  begin
    File.link(file.path, out)
  rescue Errno::EEXIST
    abort "A snapshot already exists for #{day}."
  end
end
puts "Saved #{out}"
