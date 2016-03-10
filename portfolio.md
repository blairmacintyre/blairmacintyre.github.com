---
layout: full-width
title: Portfolio
headmenu: Portfolio
permalink: /portfolio/
---

{% for project in site.portfolio reversed %}

{% if project.redirect %}
<div class="project">
    <div class="thumbnail">
        <a href="{{ project.redirect }}" target="_blank">
        {% if project.img %}
        <img class="thumbnail" src="{{ project.img }}"/>
        {% else %}
        <div class="thumbnail blankbox"></div>
        {% endif %}    
        <span>
            <p class="thumbnailTitle">{{ project.title }}</p>
            <p class="thumbnailSubtitle">{{ project.subtitle }}</p>
        </span>
        </a>
    </div>
</div>
{% else %}

<div class="project ">
    <div class="thumbnail">
        <a href="{{ site.baseurl }}{{ project.url }}">
        {% if project.img %}
        <img class="thumbnail" src="{{ project.img }}"/>
        {% else %}
        <div class="thumbnail blankbox"></div>
        {% endif %}    
        <span>
            <p class="thumbnailTitle">{{ project.title }}</p>
            <p class="thumbnailSubtitle">{{ project.subtitle }}</p>
        </span>
        </a>
    </div>
</div>

{% endif %}

{% endfor %}
