---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

I'm Caterina Fuster-Barceló, currently in the post-doc world with my focus on AI4Life project, Bioimage Model Zoo, the BioImage.IO Chatbot, and deepImageJ. My Ph.D. in Computer Science and Technology kickstarted this journey, leading me into the fascinating realm of bioimage analysis. Through projects like deepImageJ and the Bioimage Model Zoo, I'm on the front lines of integrating artificial intelligence into biomedical imaging, making strides in how we analyze and interpret biological images. Whether it's developing a chatbot to streamline bioimage analysis or pushing the boundaries with AI4Life, my work is all about leveraging technology to unveil the microscopic mysteries of biology. It's not just about the tech; it's about opening new doors in healthcare and research, one pixel at a time.

## Academic Background
- Ph.D. in Computer Science and Technology, [Universidad Carlos III de Madrid](https://www.uc3m.es/phdprogram/computer-science-technology), _13 Dec. 2022_
- M.Sc. in Cibersecurity, [Universidad Carlos III de Madrid](https://www.uc3m.es/master/cybersecurity), 2020
- B.Sc. in Telematics Engineering, [Universitat de les Illes Balears](https://www.uib.eu/Learn/estudis-de-grau/grau/telematica/GTTT-P/), 2019

## Professional History
- **Post-doctoral Researcher**: _Jan 2023 - Aug 2025_  
  **Where**: [UC3M](https://www.uc3m.es/about-uc3m/bioengineering-aerospace-engineering-department), Bioengineering Department  
  **Field**: Bioimage analysis  
  **PI**: [Dra. Arrate Muñoz Barrutia](https://image.hggm.es/es/arrate-munoz)  
  **Projects**: [AI4Life](https://ai4life.eurobioimaging.eu), [Bioimage Model Zoo](https://bioimage.io/#/), [deepImageJ](https://deepimagej.github.io)

- **Post-doctoral Researcher**: _Jan 2024 - Aug 2025_  
  **Where**: [IISGM](https://www.iisgm.com/investigacion/areas-de-investigacion/area-1-ingenieria-biomedica/29769-2/)  
  **Field**: Artificial Intelligence in biomedical imaging  
  **PI**: [Dra. Arrate Muñoz Barrutia](https://image.hggm.es/es/arrate-munoz), [Dr. Javier Pascau González](https://igt.uc3m.es/jpascau/)

- **Visiting Researcher**: _Sept 2023 - Oct 2023_  
  **Where**: [KTH](https://www.kth.se/en), [SciLifeLab](https://www.scilifelab.se), [AICell Lab](https://aicell.io), Stockholm, Sweden  
  **Field**: Bioimage analysis  
  **PI**: [Dr. Wei Ouyang](https://oeway.github.io)  
  **Projects**: [AI4Life](https://ai4life.eurobioimaging.eu), [Bioimage Model Zoo](https://bioimage.io/#/)

- **PhD Candidate**: _Sept 2020 - Dec 2022_  
  **Where**: [UC3M](https://www.uc3m.es/phdprogram/computer-science-technology)  
  **Field**: Deep Learning applied to Biometrics  
  **Supervisors**: [Dr. Pedro Peris-López](https://lightweightcryptography.com), [Dra. Carmen Cámara](https://researchportal.uc3m.es/display/inv43106)  
  **Project**: [CYNAMON-CM](https://www.tic.itefi.csic.es/CYNAMON/)

- **Research Assistant**: _Oct 2019 - Dec 2022_  
  **Where**: [UC3M](https://www.uc3m.es/home), [COSEC Laboratory](https://cosec.inf.uc3m.es)  
  **Field**: Cybersecurity  
  **Supervisors**: [Dr. Pedro Peris-López](https://lightweightcryptography.com), [Dra. Carmen Cámara](https://researchportal.uc3m.es/display/inv43106)

- **Security and DevOps Systems Technician**: _Jun 2019 - Sep 2019_  
  **Where**: [Air Europa, S.L.](https://www.aireuropa.com)  
  **Field**: Server/infrastructure maintenance and cybersecurity  
  **Supervisor**: [Bernat Mut González](https://es.linkedin.com/in/bernatmut)

## Publications

{% assign categories_order = "Peer-review Journals,Preprints,Conference Proceedings,Conference Abstracts,Datasets,Misc" | split: "," %}
{% for category in categories_order %}
  {% assign publications_in_category = site.publications | where: "category", category %}
  {% if publications_in_category.size > 0 %}
  <h3 class="category-toggle">{{ category }} <span class="toggle-icon">+</span></h3>
  <div id="publications-{{ category | slugify }}" class="publications-section">
    <ul class="pub-list">
      {% for post in publications_in_category %}
        <li class="pub-item">
          <strong><a href="{{ post.paperurl }}" target="_blank">{{ post.title }}</a></strong><br>
          <span class="pub-venue">{{ post.venue }}, {{ post.date | date: "%Y" }}</span><br>
          <span class="pub-citation">{{ post.citation }}</span>
          {% if post.paperurl %}
            <a href="{{ post.paperurl }}" class="pub-link-icon" target="_blank" title="Paper link">📄</a>
          {% endif %}
        </li>
      {% endfor %}
    </ul>
  </div>
  {% endif %}
{% endfor %}

## Talks

{% assign sorted_talks = site.talks | sort: 'date' | reverse %}
{% assign last_year = "" %}
<div class="cv-container">
  {% for post in sorted_talks %}
    {% capture current_year %}{{ post.date | date: "%Y" }}{% endcapture %}
    {% unless last_year == current_year %}
      {% assign last_year = current_year %}
      <h3 class="year-toggle">{{ last_year }} <span class="toggle-icon">+</span></h3>
      <div class="year-content">
    {% endunless %}
    {% include archive-single-talk-cv.html %}
    {% if forloop.last %}
      </div>
    {% else %}
      {% capture next_talk_year %}{{ sorted_talks[forloop.index].date | date: "%Y" }}{% endcapture %}
      {% if next_talk_year != last_year %}
        </div>
      {% endif %}
    {% endif %}
  {% endfor %}
</div>

## Teaching

### Bachelor Theses
{% for post in site.teaching %}
  {% if post.type == "Bachelor Thesis" %}
    {% include archive-single.html %}
  {% endif %}
{% endfor %}

### Master Programs
{% for post in site.teaching %}
  {% if post.type == "Master course" %}
    {% include archive-single.html %}
  {% endif %}
{% endfor %}

### Master Theses
{% for post in site.teaching %}
  {% if post.type == "Master Thesis" %}
    {% include archive-single.html %}
  {% endif %}
{% endfor %}

### Mentoring
{% for post in site.teaching %}
  {% if post.type == "Mentoring" %}
    {% include archive-single.html %}
  {% endif %}
{% endfor %}

## Events

### Hackathons
{% for post in site.events %}
  {% if post.type == "Hackathon" %}
    {% include archive-single.html %}
  {% endif %}
{% endfor %}

### Workshops
{% for post in site.events %}
  {% if post.type == "Workshop" %}
    {% include archive-single.html %}
  {% endif %}
{% endfor %}

### Conferences
{% for post in site.events %}
  {% if post.type == "Conference" %}
    {% include archive-single.html %}
  {% endif %}
{% endfor %}

## Dissertations
- **Biopotential Signals and their Applicability to Cybersecurity**, _cum laude_  
  Ph.D. Thesis, [UC3M](https://www.uc3m.es/phdprogram/computer-science-technology), Dec. 2022  
  Supervised by [Pedro Peris-López](https://lightweightcryptography.com), [Carmen Cámara](https://researchportal.uc3m.es/display/inv43106)

- **A Novel Biometrics Technique based on Electrocardiomatrix**  
  M.Sc. Thesis, [UC3M](https://www.uc3m.es/master/cybersecurity), 2020  
  Supervised by Pedro Peris-López and Carmen Cámara

- **Event Management and Safety Information**  
  B.Sc. Thesis, [UIB](https://www.uib.eu/Learn/estudis-de-grau/grau/telematica/GTTT-P/), 2019  
  Supervised by [M. Francisca Hinarejos Campos](https://www.uib.es/es/personal/ABjExMDM1Nw/)

## Certifications
- [Academic Teaching Excellence](https://www.uc3m.es/pdi/PDI-Training/Courses/Academic-teaching-excellence#contenido)
- [Microscopy Data Analysis](https://www.ebi.ac.uk/training/events/microscopy-data-analysis-0/)
- [Microscopy and Application Course](https://www.csic.es/es/formacion-y-empleo/cursos-de-alta-especializacion-del-csic/vi-curso-microscopia-y-aplicaciones)
- Autopsy Software for Forensic Analysis
- Ethical Hacking
- English Level C1 (MECR)
- French Level A2
- Machine Learning with Python (edX)
- Deep Learning ([UC3M](https://aplicaciones.uc3m.es/cpa/generaFicha?est=359&asig=18056&idioma=2))

## Others
- Finalist in [Thesis Talks 2021](https://www.uc3m.es/doctorado/thesis-talk-2021), [video](https://media.uc3m.es/video/60d2df8c8f4208a50b8b456d?track_id=60d2e01c8f4208f50b8b4567)
- Maintainer of university webpage for online courses, _2018_
- Trainee at [Fundació Bit](https://www.fundaciobit.org/es/inicio/), _May–Sep 2018_
- Waitress at Es Port (Portocolom), _2017_
- Volunteer at UIB Science Fair, _2016–2017_
- Honours in Linear Algebra & Discrete Mathematics, _2016_
- Short-story contest winner, _2016_
- Waitress at [Sa Cova Dets Ases](https://goo.gl/maps/RrAiCwAej4EKAkbh8), _2015–2016_

<style>
h2, h3 {
  border-bottom: 1px dashed #ccc;
  padding-bottom: 4px;
  margin-top: 2em;
  font-weight: 600;
}
.pub-list {
  list-style: none;
  padding-left: 0;
}
.pub-item {
  margin-bottom: 1em;
  padding-left: 12px;
  border-left: 3px solid #999;
}
.pub-venue, .pub-citation {
  font-size: 0.85rem;
  color: #555;
}
.pub-link-icon {
  margin-left: 6px;
  text-decoration: none;
}
.toggle-icon {
  margin-left: 8px;
  font-weight: normal;
}
.year-toggle, .category-toggle {
  cursor: pointer;
  margin-top: 1.5em;
}
.publications-section, .year-content {
  display: none;
}
</style>

<script>
document.querySelectorAll('.year-toggle, .category-toggle').forEach(t => {
  t.addEventListener('click', () => {
    const s = t.nextElementSibling;
    const i = t.querySelector('.toggle-icon');
    if (s.style.display === 'none') {
      s.style.display = 'block';
      i.innerHTML = '-';
    } else {
      s.style.display = 'none';
      i.innerHTML = '+';
    }
  });
});
</script>
