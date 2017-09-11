---
title: "AR presentation with argon.js + aframe.js + reveal.js" 
date: "2016-11-06T130000-0400" 
author: blair
layout: post
permalink: "/2016/11/06/argon-aframe-reveal/"
categories:
- research
- argon
tags:
- argon
- aframe
- presentation
---
I recently gave a talk (with my colleage Maribeth) at Moxie's [FutureXLive](https://moxieusa.com/futurexlive) event.

The talk was about _Democratizing AR_, the process of making AR accessible to many more people as a medium of for creating and sharing experiences, applications, and ideas. The main point of the presentation was that integrating AR technologies with the Web is the way to do this: democratization is not just about having "easy, simple tools" for creating content, but also having control over how and when the content is made available.  The requirment to build, polish, port, ship and maintain apps puts technologies like AR out of the hands of many people, in contrast to the simplicity of putting ideas on a web site.  Consider how much easier it was for me to write this blog post that ship an app!

To drive the point home, I created and delivered the presentation using web technologies. I started with [reveal.js](https://lab.hakim.se/reveal-js/#/), a web presentation framework I've used in the past, and then added in our AR web framework [argon.js](https://argonjs.io) to AR-enable the presentation, and Mozilla's [A-Frame](https://aframe.io/) to simplify the creation of 3D content. (I'd already modified _A-Frame_ to integrate with _argon.js_, creating an [argon-aframe.js](https://argonjs.io/argon-aframe) that I also included). I needed to create a modified presentation style (that included transparent backgrounds, and a few other tweaks) for _reveal.js_, but aside from that things mostly just "worked."   The bulk of the work was figuring what I wanted to show, when to use AR and when to use 2D, and so on.  The source for the presentation is on [Github](https://github.com/blairmacintyre/futurexlive), it's messy and undocumented, but pretty "straightforward" if you understand these libraries.

I did the presentation with our AR-capable web browser [Argon4](http://argon.gatech.edu), you can try it by downloading Argon4 for iOS and pointing it at [https://blairmacintyre.github.io/futurexlive/#/](https://blairmacintyre.github.io/futurexlive/#/). Since it uses web technology, I can include it here, inside and iframe:

 <iframe class='fullwidth' width="640" height="480" src="https://blairmacintyre.github.io/futurexlive/#/" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

{% newthought "The presentation" %} probably doesn't make as much sense as it could without my narrative to go along with it, as you'd expect{% marginnote "moxievideo" "Hopefully the video of my presentation will be made available; I'll post it to the blog when/if it is, or create a new video just to show this in action." %}. And, of course, since (_whatever browser you are using_) doesn't support AR technology, the "AR" slides are likely showing up as plain white slides without AR content.

On slide 4, I use political activism an example of something that may be hard to publish through apps stores (and may be blocked), and also as an example of something that is small-and-trivial-to-make and hard to justify the expense of creating and maintaining apps.

On slides 9-11, there are some live AR examples.  They were tweaked to work well during the presentation, such that the content was easily visible while I talked.  So the collection of spinning cubes on slide 9 covered the visible parts of the room from the viewpoint of the stage.  (If your browser support geolocation, you should see some of these on slide 9, over a white background, even if it doesn't support orientation, since the default orientation is _North_ and part of the room faced north.) This is a standard trick of presenting AR live:  you need to take the space into account!

Slide 12 illustrates how simple adding _A-Frame_ AR content to the presentation was. You should move _down_ on this slide (swipe on a touch screen, or use the down arrow key) to see the code snippets for all the examples.

Slide 15 was something I only wanted to dive into more detail on if I had time (I did, it turned out). So again, slide _down_ to see some slides about using [twine](http://twinery.com) to create 3D AR stories.  A slide showing the _twine_ storyboard for an interactive AR book I was creating, some _twine source code_ for the back cover of the book showing a mix of 2D and 3D content creation.  I'm not asserting here that _twine_ is the ideal AR authoring tool, but rather that by bring AR to the web, we can support integrating AR as a content element in existing web content tools, bringing AR to folks where they live.

Finally, you'll see on Slide 17 that I have a new email address!  More on that in a later blog post. 