---
permalink: /
title: "Dra. Caterina Fuster-Barceló"
excerpt: "Postdoctoral researcher at the Uhlmann Group and BioVision Center, University of Zurich, working on machine learning for bioimage analysis."
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

<div class="home-intro">
  <p class="home-lead">I am a postdoctoral researcher at the <a href="https://www.biovisioncenter.uzh.ch/en/people/team/virginie.html">Uhlmann Group</a> and the <a href="https://www.biovisioncenter.uzh.ch/en.html">BioVision Center</a>, <a href="https://www.uzh.ch/en.html">University of Zurich</a>, working on machine learning for <strong>bioimage analysis</strong>.</p>

  <p>I work on accessible and reproducible AI tools for imaging, with recent contributions to <a href="https://ai4life.eurobioimaging.eu/">AI4Life</a>, the <a href="https://bioimage.io/">BioImage Model Zoo</a>, <a href="https://deepimagej.github.io/">deepImageJ</a>, <a href="https://github.com/segment-anything-models-java/SAMJ-IJ">SAMJ</a>, and the BioImage.IO Chatbot.</p>

  <div class="home-actions">
    <a href="{{ '/cv/' | relative_url }}" class="cv-action-link">CV</a>
    <a href="{{ '/publications/' | relative_url }}" class="cv-action-link">Publications</a>
    <a href="{{ '/talks/' | relative_url }}" class="cv-action-link">Talks</a>
    <a href="{{ '/portfolio/' | relative_url }}" class="cv-action-link">Articles</a>
    {% if site.author.bluesky %}
      <a href="{{ site.author.bluesky }}" class="cv-action-link cv-action-link--secondary" target="_blank" rel="noopener noreferrer">Latest on Bluesky</a>
    {% endif %}
  </div>
</div>

<div class="home-grid">
  <section class="home-block">
    <h2 class="section-title">Current Focus</h2>
    <ul class="home-focus-list">
      <li>Machine learning for bioimage analysis</li>
      <li>Accessible AI tools for microscopy workflows</li>
      <li>Model sharing and reuse through the BioImage Model Zoo</li>
      <li>Community software such as deepImageJ and SAMJ</li>
    </ul>
  </section>

  <section class="home-block">
    <h2 class="section-title">Current Affiliations</h2>
    <ul class="home-focus-list">
      <li><a href="https://www.biovisioncenter.uzh.ch/en/people/team/virginie.html">Uhlmann Group</a></li>
      <li><a href="https://www.biovisioncenter.uzh.ch/en.html">BioVision Center</a></li>
      <li><a href="https://www.uzh.ch/en.html">University of Zurich</a></li>
    </ul>
  </section>
</div>

<section class="home-block">
  <h2 class="section-title">Latest Publications</h2>
  {% assign latest_publications = site.publications | sort: "date" | reverse %}
  {% for post in latest_publications limit: 2 %}
    <div class="pub-entry">
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <span class="year-badge">{{ post.date | date: "%Y" }}</span>
      {% if post.venue %}
        <div class="meta">{{ post.venue }}</div>
      {% else %}
        <div class="meta">{{ post.category }}</div>
      {% endif %}
      {% if post.excerpt %}
        <div class="description">{{ post.excerpt | remove: '<p>' | remove: '</p>' }}</div>
      {% endif %}
    </div>
  {% endfor %}
  <p><a href="{{ '/publications/' | relative_url }}">See all publications</a>.</p>
</section>

<section class="home-block">
  <h2 class="section-title">Recent Talks</h2>
  {% assign latest_talks = site.talks | sort: "date" | reverse %}
  {% for post in latest_talks limit: 2 %}
    <div class="talk-entry">
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <span class="year-badge">{{ post.date | date: "%Y" }}</span>
      <div class="meta">{{ post.venue }} — {{ post.location }}</div>
    </div>
  {% endfor %}
  <p><a href="{{ '/talks/' | relative_url }}">See all talks and presentations</a>.</p>
</section>

<section class="home-block">
  <h2 class="section-title">Background</h2>
  <ul class="home-focus-list">
    <li>Previously postdoctoral researcher at <a href="https://www.uc3m.es/">UC3M</a> and <a href="https://www.iisgm.com/">IISGM</a></li>
    <li>PhD in Computer Science and Technology (<em>cum laude</em>) at <a href="https://www.uc3m.es/">UC3M</a></li>
    <li>MSc in Cybersecurity at <a href="https://www.uc3m.es/">UC3M</a></li>
    <li>BSc in Telematics Engineering at <a href="https://www.uib.cat">UIB</a></li>
  </ul>
</section>
