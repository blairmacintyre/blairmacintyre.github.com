---
title: Blair MacIntyre
permalink: "/"
layout: home
nav_exclude: 1
---

<figure class='fullwidth'><img src='{{site.baseurl}}/assets/uploads/2012/02/blair-wall-widecrop.jpg'/></figure>

# Blair MacIntyre

## Professor, Designer, Husband, Father, Gamer, Bagpiper
<hr class="slender">


{% marginfigure 'blair-pic' 'assets/images/sm-blair-vio-frnt-gam1-5-fl.JPG' "A long time ago, in a grad school far, far away (ok, Columbia University is in New York, which isn't that far away)" %} I'm a Principal Research Scientist at Mozilla, and a Professor at Georgia Tech, living in Atlanta. I'm interested in designing software to help non-geeks (i.e., people "not like me") create interactive experiences that appear to live around them in the physical world, and in exploring the potential of these experiences to change how we work, play and live.  These days, I'm particularly interested in using the web for augmented reality and virtual reality development, which I pursing at Mozilla. 

I do consulting with The MacMynatt Group, a firm I founded in 2015. Prior to that, I ran Aura Interactive with Maribeth Gandy. In my spare time, I hang out with my wife and kids, try to enjoy some of the wonderful restaurants and walkable neighborhoods intown Atlanta has to offer, play the bagpipes, help out with technology at my kids schools, and play the occasional video game.{% sidenote 'gamer-tags' 'You can find me on as <em>profblair</em> on Steam and XBox Live, or <em>blairmacintyre</em> on PSN. My Overwatch / BattleNet handle changes regularly.' %}

{% newthought 'In these pages' %} you'll find pointers to some of the projects I've worked on over the years, some articles I've written, and my  blog, which focuses on augmented reality but also touches on education, games, design and occasionally politics. 


# Recent Blog Posts

<ul class="content-listing">
    {% for post in site.posts limit:3 %}
      <li class="listing">
        <hr class="slender">
         {% if post.tags contains 'micropost' %}
            <span class="smaller">{{ post.content }}</span> 
            <span class="smaller"><a href="{{ post.url | prepend: site.baseurl }}">micro.blog quip</a> on {{ post.date | date: "%B %-d, %Y" }}</span>  <br/>
         {% else %}
           <a href="{{ post.url | prepend: site.baseurl }}"><h3 class="contrast">{{ post.title }}</h3></a>
            <br><span class="smaller">{{ post.date | date: "%B %-d, %Y" }}</span>  <br/>
        {% endif %}
        </li>  
    {% endfor %}
</ul>

I've started mixing regular and <em>micro</em> blog posts.  The [micro.blog](https://micro.blog) idea is really interesting; a way to share small thoughts (like on twitter) but retain control over the content on your own publishing platform.  My micro.blog is at [https://micro.blog/blair](https://micro.blog/blair)

This site was created using [Jekyll](http://jekyllrb.com) and a collection of open-source resources and examples of sites built and published in Jekyll.  The style is based on the [Tufte theme](http://github.com/clayh53/tufte-jekyll) and the bibliography was created with [Jekyll-Scholar](https://github.com/inukshuk/jekyll-scholar). My son drew the 8 bit icon of me in the upper left corner.
