---
title: "Animated Interfaces Gaining Traction" 
date: "2016-03-23T131846-0400" 
author: blair
layout: post
permalink: "/2016/03/23/animated-interfaces-gaining-traction/"
categories:
- research
- commercial
tags:
- adaptive
- animation
---
{% capture ca-cite %}{% reference Chang:1993:ACU:168642.168647 --file others %}{% endcapture %}
{% capture ms-cite %}{% reference Maloney:1995:DLM:215585.215636 --file others %}{% endcapture %}
I've been a fan of animated interfaces for years, going back to the amazing work that Sun's _Self_ team did on the _Self_ user interface.  The _Morphic_{% sidenotevar "maloney-smith" ms-cite %}user interface used in _Self_ was interesting in a lot of ways, especially how it bent over backwards to make the interface feel alive and like you were truly directly manipulating the objects you were creating and working with, both as you programmed and as you used it. I particularly like how the team adapted traditional animation techniques for the UI, building off the years of experience traditional animators had in making cartoon animations feel "real"{% sidenotevar "chang-ungar" ca-cite %}.

I have been reminded recently of the various ways _Self_ leveraged traditional animation to make the UI feel more solid and alive when I read articles about some of the new trends in adding motion to interfaces. Google's [Material Design](https://www.google.com/design/spec/material-design/) emphasizes motion, and [Motion Design](http://thekineticui.com/so-what-is-motion-design/) has been invading traditional 2D UI's. A few days ago I read Craig Dehner's [Your App Login is Boring, Bring it to Life with Motion](https://blog.prototypr.io/your-app-login-is-boring-bring-it-to-life-with-motion-7ac2547d9c5f#.meydnr8pq) article (if you haven't read the article, or browsed his site, I encourage you to){% marginfigure "app-login" "assets/images/app-login-boring.png" "An example of what Craig talks about in his article" %}.  I think Craig's points are really good, and his focus on _what_ the animation is trying to convey that reinforces what's happening in the interface.  Reading the two papers above and comparing them to Craig's post is worth your time.

Animation is not gloss or polish: used right it can make your interfaces easier to understand, clearer and more fun to use.  The _Self_ team demonstrated this 20 years ago, and it's nice to see modern UI designers continuing this work!