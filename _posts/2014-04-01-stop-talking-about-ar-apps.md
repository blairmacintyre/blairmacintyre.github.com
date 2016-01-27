---
id: 635
title: 'Stop talking about &#8220;Augmented Reality Apps&#8221;'
date: 2014-04-01T21:52:20+00:00
author: blair
layout: post
guid: http://www.blairmacintyre.me/?p=635
permalink: /2014/04/01/stop-talking-about-ar-apps/
wpzoom_portfolio_overview:
  - 
wpzoom_portfolio_client:
  - 
wpzoom_portfolio_services:
  - 
wpzoom_post_template:
  - 
wpzoom_slideshow_url:
  - 
---
Last week I gave a couple of talks about the challenges and opportunities that arise when using web technologies to create augmented reality experiences.  (This was the same talk I mentioned in a [previous post](http://www.blairmacintyre.me/2014/03/29/a-spectrum-of-web-technology-uses-for-ar/ "A spectrum of web technology uses for AR").)  As I was preparing the talks, I found myself creating a slide imploring the audience to stop focusing on technology features (i.e., incrementally better tracking, getting-better-but-still-not-usable see-through head-worn displays) and start considering the big picture of what it will take for AR to move from being a niche technology to more widely used.  Here&#8217;s the slide, pulled out of the context of the talk (so please don&#8217;t critique it in isolation), with two points highlighted in bold:

<div id="attachment_643" style="width: 442px" class="wp-caption aligncenter">
  <a href="http://www.blairmacintyre.me/wp-content/uploads/2014/04/ar-web-programming.001.jpg"><img class=" wp-image-643 " alt="ar-web-programming.001" src="http://www.blairmacintyre.me/wp-content/uploads/2014/04/ar-web-programming.001.jpg" width="432" height="324" srcset="http://blairmacintyre.me/wp-content/uploads/2014/04/ar-web-programming.001-300x225.jpg 300w, http://blairmacintyre.me/wp-content/uploads/2014/04/ar-web-programming.001-466x350.jpg 466w, http://blairmacintyre.me/wp-content/uploads/2014/04/ar-web-programming.001-630x472.jpg 630w, http://blairmacintyre.me/wp-content/uploads/2014/04/ar-web-programming.001.jpg 720w" sizes="(max-width: 432px) 100vw, 432px" /></a>
  
  <p class="wp-caption-text">
    A slide suggesting some things holding AR back
  </p>
</div>

These two points may seem a bit unexpected, if we&#8217;re talking about consumer-oriented, always-on AR.  Normally, discussions of the future of AR focus on the technology: the need for wide field-view immersive see-through displays, combined with sensing technology that builds a real-time 3D model of the world around the user so that graphics can be merged into AR at a level comparable to the &#8220;First and Ten&#8221; system used on American football broadcasts.

Heck, if you&#8217;ve asked me about the various AR head-worn displays that have been appearing in the past year,  I would point out how they are all woefully inadequate, and I would have mentioned this sort of technology: it seems pretty clear that nobody will be able to wear an HMD that covers most of their visual field (in contrast to Google Glass, which covers very little of your vision, and none of your foveal vision) until graphics can be seamlessly integrated with their view of the world. Without such integration, there are too many practical issues (safety chief among them) that would prevent most people from using them. But, this utopian display won&#8217;t exist any time soon, and that&#8217;s not what I&#8217;m talking about on the slide above.

Whether we&#8217;re thinking of AR delivered on head-worn displays, or on mobile phones, **a fundamental limitation in the conversation about AR right now is embodied in the idea on an &#8220;AR application.&#8221;**  AR is a modality, a way of displaying information such that it is merged with a user&#8217;s view of the world around them.  In any kind of experience or application, AR content is one sort of information that needs to be displayed, one that is most useful when there is some benefit to the information actually appearing to be &#8220;in&#8221; the world.  The benefit might arise because the computer generated information is referring to something physical (&#8220;place widget X on gizmo Z&#8221;) or because two people are playing a game together and the graphics need to be physically situated in the world with them (&#8220;Sith vs Jedi, Force Lighting Dual!&#8221;).  The content might be educational, or informational (&#8220;this restaurant has your favorite curry as the daily special&#8221;).

Regardless of the use, the idea that non-trivial applications that happen to want to display some content using AR would be &#8220;AR apps,&#8221; using AR content as their main modality, seems unlikely to me (ignoring AR games like my lab&#8217;s [Nerdherder](http://ael.gatech.edu/nerdherder/)).  Many of the apps we use every day include a wide variety of media (video, map-mashups, 2d lists and charts, text, 3D graphics, and so on), of which AR would just be another.  And most of the media we consume is better displayed on a flat screen, that we can physically interact with, that in the world around us.

Shifting the focus from building &#8220;AR apps&#8221; to asking &#8220;when might AR actually be useful to my user&#8221; and providing multiple ways to interact with the content is a better way to think about AR.

When we start thinking about AR as a way to present content, especially content that is blended with the world around is, a second problem becomes apparent: **AR content shouldn&#8217;t be confined to individual apps**. AR is appealing because it associates content with our physical world;  but at any point in time, there might be content from many apps on our devices (tourism information, social media streams, content-based search, games, work-related content, etc) that is relevant to the world around us.  When a user stands at a given place at a certain time, any one of these content streams is unlikely to be relevant.  But if all the content we cared about (perhaps defined by the apps we have installed and run on our phones) was visible at once, any time we looked at the world through the AR view in any of these apps (or, perhaps, at an AR view floating behind the icons on our home screens!), the chance of seeing relevant and interesting things increases dramatically.

Because for AR, it&#8217;s not the killer app.  It&#8217;s the killer ecosystem, the sum total of all AR apps.

In our [Argon project](http://argon.gatech.edu), we are exploring how to display multiple independently written AR &#8220;web-apps&#8221; at once. The idea of merging content from apps that have been authored independently, by different people with different styles and agendas, is quite different than the approach used by the &#8220;AR Browsers&#8221; (Layar, Wikitude, Junaio). In those Browsers, the information is contributed by multiple independent authors, but  is formatted relatively uniformly and presented through a common UI.  The use case of such &#8220;buckets of bits of info&#8221; is dramatically narrower than the use cases you can think of for general interfaces that combine AR and other content in whatever way the authors see fit.  It is the difference between a list of search results on Google, and the collection of websites they refer to.

Finally, while I&#8217;m excited about the work we are doing with Argon, the web is a limited sandbox.  **What we really need is for Apple, Microsoft and Google to embrace the idea of &#8220;AR content&#8221; and provide native APIs for applications to create, semantically tag, organize, and display AR content in their apps**. Using the structure provided by the application programmers, content from different apps could be displayed together in one common view, at the user&#8217;s command.  Imagine opening an AR view on your phone, and seeing all the content from all your apps, displayed together, with the full capabilities of each application only a tap away?

<div id="attachment_636" style="width: 388px" class="wp-caption aligncenter">
  <a href="http://dx.doi.org/10.1109/MCG.2013.51"><img class="wp-image-636 " alt="walled-gardens-cga" src="http://www.blairmacintyre.me/wp-content/uploads/2014/04/walled-gardens-cga-751x1024.png" width="378" height="515" srcset="http://blairmacintyre.me/wp-content/uploads/2014/04/walled-gardens-cga-220x300.png 220w, http://blairmacintyre.me/wp-content/uploads/2014/04/walled-gardens-cga-751x1024.png 751w, http://blairmacintyre.me/wp-content/uploads/2014/04/walled-gardens-cga-630x858.png 630w, http://blairmacintyre.me/wp-content/uploads/2014/04/walled-gardens-cga.png 892w" sizes="(max-width: 378px) 100vw, 378px" /></a>
  
  <p class="wp-caption-text">
    If you&#8217;d like to read more about these ideas and others, I wrote a column in IEEE&#8217;s Computer Graphics and Application magazine in 2013, linked here.
  </p>
</div>