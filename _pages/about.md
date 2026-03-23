---
permalink: /
title: "Dra. Caterina Fuster-Barceló"
excerpt: "Postdoctoral researcher in computational bioimage analysis developing robust, efficient, and transferable AI for microscopy."
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

<div class="home-intro">
  <p class="home-lead">I am a postdoctoral researcher in <strong>computational bioimage analysis</strong> at the <a href="https://www.biovisioncenter.uzh.ch/en/people/team/virginie.html">Uhlmann Group</a> and the <a href="https://www.biovisioncenter.uzh.ch/en.html">BioVision Center</a>, <a href="https://www.uzh.ch/en.html">University of Zurich</a>.</p>

  <p>My work focuses on foundation models, efficient adaptation, reproducible AI, and practical deployment for microscopy and bioimage analysis. I am interested in building robust, efficient, and transferable methods that can support real scientific workflows, and my profile combines methodological research with software, training, and community-facing contributions such as the <a href="https://bioimage.io/">BioImage Model Zoo</a>.</p>

  <div class="home-actions">
    <a href="{{ '/cv/' | relative_url }}" class="cv-action-link">CV</a>
    <a href="{{ '/publications/' | relative_url }}" class="cv-action-link">Publications</a>
    <a href="{{ '/talks/' | relative_url }}" class="cv-action-link">Talks</a>
    <a href="{{ '/writing-outreach/' | relative_url }}" class="cv-action-link">Writing &amp; Outreach</a>
    {% if site.author.bluesky %}
      <a href="{{ site.author.bluesky }}" class="cv-action-link cv-action-link--secondary" target="_blank" rel="noopener noreferrer">Latest on Bluesky</a>
    {% endif %}
  </div>
</div>

<div class="home-grid">
  <section class="home-block">
    <h2 class="section-title">Research Profile</h2>
    <ul class="home-focus-list">
      <li>Computational bioimage analysis and AI for microscopy</li>
      <li>Foundation models, transfer, and efficient adaptation across imaging domains</li>
      <li>Reproducible AI methods that can be deployed in practical analysis workflows</li>
      <li>Community-facing resources that help make advanced methods usable and reusable</li>
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
  <h2 class="section-title">Selected Outputs</h2>
  <div class="selected-outputs">
  {% for item in site.data.selected_outputs %}
    <article class="selected-output-card">
      <div class="selected-output-card__header">
        <span class="content-badge">{{ item.kind }}</span>
      </div>
      <h3 class="selected-output-card__title">
        <a href="{{ item.url | relative_url }}">{{ item.title }}</a>
      </h3>
      <p class="selected-output-card__description">{{ item.description }}</p>
    </article>
  {% endfor %}
  </div>
</section>

<section class="home-block">
  <h2 class="section-title">Background</h2>
  <ul class="home-focus-list">
    <li>Previously postdoctoral researcher at <a href="https://www.uc3m.es/">UC3M</a> and <a href="https://www.iisgm.com/">IISGM</a>, contributing to projects such as AI4Life, deepImageJ, SAMJ, and community-facing bioimage analysis tools</li>
    <li>PhD in Computer Science and Technology (<em>cum laude</em>) at <a href="https://www.uc3m.es/">UC3M</a></li>
    <li>MSc in Cybersecurity at <a href="https://www.uc3m.es/">UC3M</a></li>
    <li>BSc in Telematics Engineering at <a href="https://www.uib.cat">UIB</a></li>
  </ul>
</section>
