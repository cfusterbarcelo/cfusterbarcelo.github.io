---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% include base_path %}

<style>
.section-title {
  font-size: 1.5em;
  font-weight: 600;
  margin-top: 40px;
  border-bottom: 2px solid #ddd;
  padding-bottom: 4px;
}

.pub-entry {
  margin-bottom: 25px;
}

.pub-entry a {
  font-size: 1.1em;
  font-weight: 600;
  text-decoration: none;
}

.pub-entry .meta {
  font-size: 0.9em;
  color: #666;
  margin-top: 2px;
  margin-bottom: 4px;
}

.pub-entry .year-badge {
  display: inline-block;
  font-size: 0.85em;
  background-color: #f2f2f2;
  padding: 2px 8px;
  border-radius: 12px;
  margin-left: 10px;
  color: #444;
}

.pub-entry .description {
  font-size: 0.95em;
  color: #444;
  margin-top: 5px;
}
</style>

{% if author.googlescholar %}
<p>You can also find my articles on <a href="{{author.googlescholar}}" target="_blank">Google Scholar</a>.</p>
{% endif %}

{% assign categories_order = "Peer-review Journals,Preprints,Conference Proceedings,Conference Abstracts,Datasets,Misc" | split: "," %}

{% for category in categories_order %}
  {% assign publications_in_category = site.publications | where: "category", category %}

  {% if publications_in_category.size > 0 %}
    <h2 class="section-title">{{ category }}</h2>
    {% assign sorted_publications = publications_in_category | sort: "date" | reverse %}
    {% for post in sorted_publications %}
      <div class="pub-entry">
        <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
        <span class="year-badge">{{ post.date | date: "%Y" }}</span>
        {% if post.venue %}
          <div class="meta">Published in {{ post.venue }}{% if post.location %}, {{ post.location }}{% endif %}</div>
        {% endif %}
        {% if post.excerpt %}
          <div class="description">{{ post.excerpt | markdownify }}</div>
        {% endif %}
      </div>
    {% endfor %}
  {% endif %}
{% endfor %}
