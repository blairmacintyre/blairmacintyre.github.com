---
title: 'Google''s Global Localization using VPS, the AR Cloud, and Privacy'
date: '2019-02-13T11:25:49-05:00'
author: blair
layout: post
categories:
  - commercial
  - privacy
tags:
  - google
  - vps
  - maps
permalink: 2019/02/13/global-localization
---
Interesting post Interesting post today on the Google AI Blog on [Using Global Localization to Improve Navigation](https://ai.googleblog.com/2019/02/using-global-localization-to-improve.html). Google is attempting to solve one of the thorniest problems with outdoor navigation, namely the unreliability and inaccuracy of the GPS and orientation sensors on mobile devices.  As they say,   > One of the consistent challenges when navigating with Google Maps is figuring out the right direction to go: sure, the app tells you to go north - but many times you're left wondering, "Where exactly am I, and which way is north?" Over the years, we've attempted to improve the accuracy of the blue dot with tools like GPS and compass, but found that both have physical limitations that make solving this challenge difficult, especially in urban environments. 
>
> We're experimenting with a way to solve this problem using a technique we call global localization, which combines Visual Positioning Service (VPS), Street View, and machine learning to more accurately identify position and orientation. Using the smartphone camera as a sensor, this technology enables a more powerful and intuitive way to help people quickly determine which way to go.

I’m interested to see where this goes.  When talking about "AR Cloud" ideas in the past, I’ve been very critical about the whole idea of automated crowd sourced aggregation of a structured map of the world, where the act of tracking the device feeds the 3D structure around you back into an ever-updating world map.  While appealing from a technical viewpoint{% marginnote "justification" "Also appealing from an \"OMG we can create a small company and ride a massive hockey stick growth curve and get bought out and get our yachts\"
 viewpoint, which is at least as important in the tech industry."%}, this approach has massive privacy concerns, from "How can we possibly ensure private spaces are not included?" to "Why should we trust such companies with this kind of access and data?".

But, here, a number of these concerns disappear.  Google’s Streetview images are already limited to public spaces, so matching against those fits well with the idea that this combination of GPS, camera and stored imagery is limited to public spaces.  Google doesn’t need to collect and aggregate the video from user cameras, as they are matching against a set of images they already have.  

{% newthought "Of course" %}, "doesn’t need to collect" and "won’t collect" are very different things.  The temptation to collect images from user cameras will be very real here, even "only to improve the service."  The "Data storage and access limitations" Google instituted for their [AR Cloud Anchors](https://developers.google.com/ar/develop/java/cloud-anchors/overview-android) are a good start for Google offering some privacy guarantees for AR users, but the use case is very different so these guarantees are probably not a good model for how they would manage data they might collect here.  

What I would like to see is Google do the matching on the client device, so they send no user data to the cloud, and when they determine there are potential problems (e.g., "this part of the street view panorama never matches, there is probably something that’s changed") explicitly ask the user’s for feedback or to contribute data … or simply schedule another streetview car to drive along that street and capture updated data.  But explicit opt-in is a very good solution here:  I suspect many Google Maps users would be happy to contribute imagery to improve something they are actively using.

{% newthought "Moving" %} forward, the possibility that these approaches could improve the localization of AR applications in public places is very exciting.  If the user has granted location permissions to an application (or a web page, in the case of WebXR), and is use ARCore/ARKit on Android/iOS, having the location be refined to sub-foot level accuracy "for free", and combined with smooth local motion tracking using the AR SDKs, opens the door to many exciting outdoor applications.  And as Google Maps (and, thus, the VPS) expands to authorized indoor locations (such as museums and shopping malls), we move one step closer to useful consumer AR applications.

All without the risks of crowd-sourced AR cloud solutions.
