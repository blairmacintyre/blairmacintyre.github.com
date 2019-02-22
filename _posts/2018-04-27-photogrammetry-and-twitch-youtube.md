---
title: Twitch, Youtube, Video and Photogrammetry
date: 2018-04-27 17:32:15 -04:00
permalink: 2018/04/27/photogrammetry-twitch-youtube
categories:
- personal
- musings
tags:
- Photogrammetry
- video
author: blair
layout: post-full-width
---

 Every now and again, I run across cool things people do with [Photogrammetry](https://en.wikipedia.org/wiki/Photogrammetry); todays example is this real-time demo that leverages ARKit on an iPhone

{% twitter https://mobile.twitter.com/nobbis/status/972298968574013440 %}

Whenever is see things like that, I'm often reminded how useful it would be to have these techniques available in other contexts;  one interesting one that comes to mind is videos uploaded to youtube, twitch, vimeo or some similar service.  And, in particular, gameplay videos.  

{% newthought "Consider" %} a video of a game like Overwatch.  Overwatch  has a half dozen maps, each of which is pretty structured, and a typical video has large hunks of time in one of them, with the action tending to move pretty slowly through the areas

{% youtube kyYCXDge8vg %}

It seems that a gameplay video like this has more than enough information to allow the environment to be (at least partially) reconstructed, perhaps separately for different parts of the video.  

Imagine if, when you visit a video like this on youtube, you can step into a reconstruction of the environment using VR?  Especially with WebXR coming to (every?) browser near you, there seems to be huge opportunities  to create new kinds of experiences if the folks uploading gameplay videos can pull down an environment generated from those videos, and use it as they want.
