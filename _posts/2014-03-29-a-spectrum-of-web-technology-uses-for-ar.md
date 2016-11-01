---
id: 620
title: A spectrum of web technology uses for AR
date: 2014-03-29T23:25:48+00:00
author: blair
layout: post
guid: http://www.blairmacintyre.me/?p=620
permalink: /2014/03/29/a-spectrum-of-web-technology-uses-for-ar/
categories:
- AEL
- argon
tags:
- html5
- web
---

Last week I gave a few talks on AR technology and the web (at the [AWE-NY AR meetup](http://awe-ny.com) in New York, and the [AR Community Meeting](http://www.perey.com/ARStandards/march-2014-ar-community-agenda/) at the OGC Annual Meeting in DC), based on our work on the [Argon Web Browser](http://argon.gatech.edu), a project I run at Georgia Tech.  Argon is interesting, I think, because we are exploring what it means to add AR technology to a web browser, and what it would mean for both the programmer API's and user experience.

A question I often get, that I tried to answer in the presentations, is how Argon differs from other systems that use web technologies for AR.  For example, most of the current "AR browsers" (such as Wikitude, Layar and Junaio) allow programmers to create part of their content using HTML5 and Javascript, but most of the content is not created with web technologies, but rather manipulated via a Javascript interface.  Argon, by contrast, uses pure HTML5 content (HTML/CSS and WebGL, for example), since it is a web browser with custom extensions that provide access to AR technologies.  Other approaches, exemplified by PhoneGap and Cordova, allow programmers to use HTML5 to create custom applications that do not leverage the web at runtime.

Eventually, AR will be possible in most web browsers, but there is still a ways to go.  Right now, it is impossible to run non-trivial computer vision in Javascript (e.g., JSARToolkit runs in Javascript, but is slow and far behind what is possible in native code).  Part of the issue is the speed of Javascript, but the real problem is the overhead required to get access to video frames.  Similarly, to merge graphics with camera images on a mobile phone or tablet, the system must know the intrinsic parameters of the camera, such as it's focal length. Our goal with Argon's Javascript APIs (argon.js) is to support both our own browser, but other standard browsers;  eventually, as the technology becomes available in these browsers, web apps written with argon.js will work in them, we hope.


To capture the spectrum of ways HTML5/Javascript is used in AR right now, I included this slide in my presentation.  It's fairly high level, as it was part of a longer presentation, but I'd be interested in hearing what others think of this.  (These ideas also came out of discussions with Rob Manson, at [BuildAR.com](http://buildar.com), who created BuildAR and the awe.js library referenced on the slide).

{% maincolumn "assets/uploads/2014/03/ar-web-programming.001.jpg" "Ways to use web technology to build AR apps." %}

In this slide, the left end represents doing AR in a standard web browser, such as Chrome or Firefox on Android. The image on the left is of a simple AR application created by a student in my lab, and awe.js is an pure-HTML5 AR library that the owners of builder.com are trying to finance via kickstarter (buildAR itself is a tool for creating content for a variety of applications that use web technology in different ways.)

[_update 4/1/2014:  added in a reference to Rob Manson, who worked with me on the talk that this slide came from_]
