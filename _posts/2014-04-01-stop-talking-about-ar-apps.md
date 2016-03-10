---
id: 635
title: 'Stop talking about &#8220;Augmented Reality Apps&#8221;'
date: 2014-04-01T21:52:20+00:00
author: blair
layout: post
guid: http://www.blairmacintyre.me/?p=635
permalink: /2014/04/01/stop-talking-about-ar-apps/
categories:
- argon
- musings
tags:
- AR apps
- ecosystems
- native AR APIs
---

Last week I gave a couple of talks about the challenges and opportunities that arise when using web technologies to create augmented reality experiences.  (This was the same talk I mentioned in a [previous post](http://www.blairmacintyre.me/2014/03/29/a-spectrum-of-web-technology-uses-for-ar/).)  As I was preparing the talks, I found myself creating a slide imploring the audience to stop focusing on technology features (i.e., incrementally better tracking, getting-better-but-still-not-usable see-through head-worn displays) and start considering the big picture of what it will take for AR to move from being a niche technology to more widely used.  Here's the slide, pulled out of the context of the talk (so please don't critique it in isolation), with two points highlighted in bold:

[caption id="attachment_643" align="aligncenter" width="432"][![ar-web-programming.001](http://www.blairmacintyre.me/wp-content/uploads/2014/04/ar-web-programming.001.jpg)](http://www.blairmacintyre.me/wp-content/uploads/2014/04/ar-web-programming.001.jpg) A slide suggesting some things holding AR back[/caption]

These two points may seem a bit unexpected, if we're talking about consumer-oriented, always-on AR.  Normally, discussions of the future of AR focus on the technology: the need for wide field-view immersive see-through displays, combined with sensing technology that builds a real-time 3D model of the world around the user so that graphics can be merged into AR at a level comparable to the "First and Ten" system used on American football broadcasts.

Heck, if you've asked me about the various AR head-worn displays that have been appearing in the past year,  I would point out how they are all woefully inadequate, and I would have mentioned this sort of technology: it seems pretty clear that nobody will be able to wear an HMD that covers most of their visual field (in contrast to Google Glass, which covers very little of your vision, and none of your foveal vision) until graphics can be seamlessly integrated with their view of the world. Without such integration, there are too many practical issues (safety chief among them) that would prevent most people from using them. But, this utopian display won't exist any time soon, and that's not what I'm talking about on the slide above.

Whether we're thinking of AR delivered on head-worn displays, or on mobile phones, **a fundamental limitation in the conversation about AR right now is embodied in the idea on an "AR application."**  AR is a modality, a way of displaying information such that it is merged with a user's view of the world around them.  In any kind of experience or application, AR content is one sort of information that needs to be displayed, one that is most useful when there is some benefit to the information actually appearing to be "in" the world.  The benefit might arise because the computer generated information is referring to something physical ("place widget X on gizmo Z") or because two people are playing a game together and the graphics need to be physically situated in the world with them ("Sith vs Jedi, Force Lighting Dual!").  The content might be educational, or informational ("this restaurant has your favorite curry as the daily special").

Regardless of the use, the idea that non-trivial applications that happen to want to display some content using AR would be "AR apps," using AR content as their main modality, seems unlikely to me (ignoring AR games like my lab's [Nerdherder](http://ael.gatech.edu/nerdherder/)).  Many of the apps we use every day include a wide variety of media (video, map-mashups, 2d lists and charts, text, 3D graphics, and so on), of which AR would just be another.  And most of the media we consume is better displayed on a flat screen, that we can physically interact with, that in the world around us.

Shifting the focus from building "AR apps" to asking "when might AR actually be useful to my user" and providing multiple ways to interact with the content is a better way to think about AR.

When we start thinking about AR as a way to present content, especially content that is blended with the world around is, a second problem becomes apparent: **AR content shouldn't be confined to individual apps**. AR is appealing because it associates content with our physical world;  but at any point in time, there might be content from many apps on our devices (tourism information, social media streams, content-based search, games, work-related content, etc) that is relevant to the world around us.  When a user stands at a given place at a certain time, any one of these content streams is unlikely to be relevant.  But if all the content we cared about (perhaps defined by the apps we have installed and run on our phones) was visible at once, any time we looked at the world through the AR view in any of these apps (or, perhaps, at an AR view floating behind the icons on our home screens!), the chance of seeing relevant and interesting things increases dramatically.

Because for AR, it's not the killer app.  It's the killer ecosystem, the sum total of all AR apps.

In our [Argon project](http://argon.gatech.edu), we are exploring how to display multiple independently written AR "web-apps" at once. The idea of merging content from apps that have been authored independently, by different people with different styles and agendas, is quite different than the approach used by the "AR Browsers" (Layar, Wikitude, Junaio). In those Browsers, the information is contributed by multiple independent authors, but  is formatted relatively uniformly and presented through a common UI.  The use case of such "buckets of bits of info" is dramatically narrower than the use cases you can think of for general interfaces that combine AR and other content in whatever way the authors see fit.  It is the difference between a list of search results on Google, and the collection of websites they refer to.

Finally, while I'm excited about the work we are doing with Argon, the web is a limited sandbox.  **What we really need is for Apple, Microsoft and Google to embrace the idea of "AR content" and provide native APIs for applications to create, semantically tag, organize, and display AR content in their apps**. Using the structure provided by the application programmers, content from different apps could be displayed together in one common view, at the user's command.  Imagine opening an AR view on your phone, and seeing all the content from all your apps, displayed together, with the full capabilities of each application only a tap away?

[caption id="attachment_636" align="aligncenter" width="378"][![walled-gardens-cga](http://www.blairmacintyre.me/wp-content/uploads/2014/04/walled-gardens-cga-751x1024.png)](http://dx.doi.org/10.1109/MCG.2013.51) If you'd like to read more about these ideas and others, I wrote a column in IEEE's Computer Graphics and Application magazine in 2013, linked here.[/caption]
