---
title: 'WebXR: Reflecting on the Needs of Real AR on the Web'
date: '2018-03-13T11:33:57-04:00'
author: blair
layout: post 
categories:
  - webxr
  - musings
tags:
  - computer vision
  - geospatial
  - search
  - relocalization
---
In a [post on the Mozilla MR Blog](https://blog.mozvr.com/responsive-webxr-a-painter-xr/){% marginfigure "apainterxr" "assets/images/AR-main-UI-sm.jpg" "A-Painter XR AR interface" %}, I talked about the responsive AR/VR interface we created for a WebXR version of [A-Painter](https://github.com/aframevr/a-painter), called A-Painter XR.  In that post, I mentioned that we started working on this app while envisioning the ability to create and share “AR Graffiti” out in the world.

When we started thinking about “AR Graffiti”, part of the goal was to experiment with a realistic application, to get a sense of problems that need to be solved to create AR apps using WebXR, and what the solutions might look like.

In this post, I want to touch on some of the issues raised by the A-Painter XR project, and the requirements that highlight the need for WebXR and Web-based AR more broadly.{% marginnote "disclaimer" "We'll expand on some of these topics back on the Mozilla blog, but I wanted to get these less-baked ideas out there to spur discussion. I also want to thank the MR team for contributing to these ideas." %}

## Geospatial Content

The very first thing people wanted to do when we mentioned the idea of AR Graffiti is share what they created _in the world_ with others. The image of a world filled with “virtual 3D paintings,” that people created and left for others to find, caught people’s imagination. But current AR platforms (including WebXR) don’t make it straightforward to integrate geospatial content into an AR application. And on some platforms, the technology itself makes this difficult. Hololens, for example, doesn’t have any way of aligning it’s coordinate system with the world because it lacks an electronic compass. Some platforms makes is easier than others; ARKit, for example, allows its local coordinate system to be automatically aligned with the geospatial East-Up-South coordinate frame without giving the user’s actual location to the application.

On the web, we care very much about only giving web pages location access if the user explicitly grants permission. With user permission, and the right device capabilities, integrating geospatial content should be easy. The [Argon4 browser](https://argonjs.io) and associated argon.js framework, for example, leverage the [cesium.js](https://cesiumjs.org) geospatial math libraries to integrate all content into a global geospatial coordinate frame and align the local device tracking coordinates with geospatial coordinates.

{% newthought "The question" %} of how much of this should be integrated into WebXR and how much left to the web developer is unclear. ARKit’s approach is promising and points at one possible approach: a developer could ask for the device coordinates to be aligned with East-Up-South (EUS) if the platform is capable of it, and then do the spatial alignment between the browser's reported geospatial location and the platform coordinate system if the user gives the web page location access. 

## Precise Localization

Having access to geolocation is only part of the problem, however. The location API on mobile devices can only get you part of the way toward sharing AR Graffiti in the world; if you want to drop an AR painting into the middle of an outdoor  field, and you only care that it’s near the center of the field, the  accuracy of geolocation APIs on current devices is good enough.  

![null](/assets/uploads/painting-in-yard.png)

But if you want to have the painting standing in an exact location of the field, such as beside the sidewalk in this picture, or if you wanted to paint giant spider webs hanging between the windows on a building, or paint a mustache on a statue near the field, GPS is not going to be accurate enough any time soon. 

We’ve been referring to this problem as the “last meter” problem. GPS gets you within a few meters of your real location, but how can we solve the last meter problem? How can we ensure that the mustache appears on the statue, the 3D birthday “card” over the center of the kitchen table, or the maintenance alert left by a technician appears over the right machine?

One approach is to try and solve the problem globally. A few articles have been written recently about the idea of an [AR Cloud](https://medium.com/super-ventures-blog/arkit-and-arcore-will-not-usher-massive-adoption-of-mobile-ar-da3d87f7e5ad) or Mirror World or something similar: a massive, continuously updated model of the world created by aggregating sensor information from AR users, allowing devices and content to be positioned accurately in 3D space anywhere in the world. This might be initially appealing from a technical viewpoint (such a system might solve localization, persistence, ensuring everyone has the same coordinate systems, occlusion of content by the physical world, and on and on, in one fell swoop!). But it seems inconceivable that such a system could be built  without creating intractable privacy and surveillance problems, even without considering the implications of a security breach on the database. 

> _A fully detailed model like this would include precise models of everywhere in everyone’s home and workplace, and no automated system could deal with the complex social notions of what is or is not considered private, who has the rights to share it or access it, and so on._

Perhaps alternative architectures, where public data is more carefully collected, curated and maintained (e.g., akin to Google’s Streetview or Bing’s Streetside View) and combined with private data accessible only to the user and their devices (e.g., akin to the maps created by Hololens) could help solve this problem in a more socially responsible way. It may be that some things will need to be given up (e.g., perhaps we don’t get shared 3D maps of the physical world, but can still rely on localizing ourselves, people we are with, and the content we care about to a common local coordinate system?)

{% newthought "The question" %} of how precise localization relates to WebXR is unclear. Should WebXR focus on exposing displays and local precise tracking, and leave the question of relocalization to other web or platform facilities? Should platforms themselves deal with relocalization transparently (e.g., by going all-in on an “AR Cloud”) and give users all-or-nothing choices (e.g., contribute to the cloud or don’t experience large classes of AR experiences), should the browser handle it as part of the a collection of WebXR standards (e.g., users choose their “AR Cloud” service, like they choose their search service), should applications themselves deal with this (e.g., by accessing the appropriate sensor and visual data and passing it up to their servers, and then on to an AR Cloud provider), or some combination of these? What would be best for users?   

## Persistence

Knowing where things are is actually a separate question from having them persist. We could modify the A-Painter XR code to store the geospatial location of paintings with them, and make those paintings available to anyone near the right location (something we did at one of our recent company meetings, as an experiment). Without high-quality localization, the results are not as interesting as you might hope, since so much of what people would like to draw in the world is done in relation to physical things in the world: we want to draw _on_ that statue, not _near_ that statue. 

Regardless, It’s best to think about localization and persistence as separate issues;  one requires the other (e.g., an application needs to know where something is, as precisely as possible, if it wants to have it persist at that location), but not the other way around (e.g.,  whether an application wants to keep content around over time is a separate question).

I mention this here because when presented with the idea of AR displays, many people imagine being immersed in a world where any content that has been created is available to them.  But such a world is untenable; if I type “Times Square New York” into google.com, it returns 171 million results.  Which of those should we display to users walking through Times Square? {% sidenote "filter" "Real-time information filtering is going to be big business for mobile AR. Not just to deal with the volume of information, but also to provide different views for different contexts.  Some parents may want their kids to have the <em>PBS Kids</em> or <em>Disney</em> approved-content filter; others may want to dramatically change the styling of their views ala <a href='https://en.wikipedia.org/wiki/Rainbows_End'>Rainbow's End</a> <em>consensual realities</em>." %}

![null](/assets/uploads/times-square-search.png)

Rather, persistence is very likely going to be done on an application level, and discovery of persistent content may need to be handled analogously to current approaches to search. I don’t expect persistence to be something that is dealt with in WebXR, but rather handled much like other content on the web.

## Visual and Spatial Search and Discovery

Assuming we want to share AR graffiti paintings with others, how should they discover and access them?  The A-Painter XR application itself might provide access to paintings, just as current apps provide access to their data now. Paintings may also be exported to spatial search engines, and discovered automatically (much as content found by web crawlers can be discovered via Google’s, Microsoft’s and Apple’s map search).  

But what if someone wants to create AR graffiti that’s associated with “things”, not places. For example, perhaps I want to attach graffiti to a movie poster, or a certain kind of car, a political image, a person, or even (perhaps) to a unique object that I’m not willing or able to assign to a static location.   How does an application attach content to things?  How do apps search for things visually?  

It’s useful to distinguish between two kinds of visual search: general search (“is there anything of interest near me?”) and application specific search (“is there content for this application near me”). The general search problem is very hard, and being worked on aggressively by multiple companies, but it is unclear how best to present the results to the user, and how companies will be willing to let the services be used. It might be, for example, that visual search in a browser works similar to text search:  I put my browser in “search” mode, and the features, structure and images seen by the device are sent to a service.  A WebXR “results” page is returned to the browser, with the content, layout and links controlled by the search engine (much as the layout of the results page from Google or Bing is controlled by those services). This could be made to work in a straightforward way.

Application-specific search is different.  With a more restricted set of content, individual applications can filter and control the results of their search in very different ways. The A-Painter XR graffiti search engine could use a more customized search service that knows only about nearby locations and the “things” that users have attached graffiti to, a much easier problem. Application-specific services can also be monetized differently, with the search engines and applications passing on costs in different ways depending on their business models.

For general search, the camera and sensor data can be passed directly from the browser to the search engine, and is never seen by a web page. But for application-specific visual search to be possible, the cameras and sensors on the device must be available to web applications. Making this available to applications will enable not just visual search, but any sort of custom computer vision an application might want to do.

## Custom Computer Vision

Getting access to cameras and device sensors inside a web page is currently possible, but in very limited ways.  Cameras can be accessed via [WebRTC getUserMedia](https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices/getUserMedia), but essential information for computer vision isn’t available (e.g., camera intrinsics, temporal synchronization about the pose of the device relative to the camera frames) and access image data from frames in the video streams is expensive and slow (because they APIs are optimized for display and streaming, not vision processing). Despite the limitations, many interesting experiments have been done with computer vision on the web over the years(e.g., [tracking.js](https://trackingjs.com), [jsartoolkit](https://github.com/artoolkit/jsartoolkit5), [HeadTracker](https://github.com/auduno/headtrackr), etc.), but such experiments have never achieved results close to what is possible with native platforms. 

WebXR could change this. Some building blocks are in place or being worked on:  [WebAssembly](http://webassembly.org/) gives web pages access to near native speeds, and [WebCL](https://www.khronos.org/webcl/) (or other approaches to next-generation GPU access) may enable cross-platform GPU-based processing. The missing piece is efficient access to camera and sensor data. 

In the context of WebXR, we have the opportunity to restrict the API to the cameras and sensors on the XR device: the camera being used by ARKit or ARCore, on the front of the Vive or Hololens, or embedded in any of the newer devices under development. In all of these cases, the underlying platform knows the precise specifications of the cameras (their so-called intrinsic properties, like focal length and distortion, as well as their position and orientation relative to the local tracking coordinates reported by the device), and usually has efficient access to the video frames and sensor readings from the devices on the display. By focusing on providing efficient access to just the cameras and other sensors on an XR device, a wide range of custom sensing could be available to web applications, without the need to standardize and build the technology directly into every browser.  

{% capture ca-cite %}{% reference vr2016-nuernberger-etal-7504746 %}{% endcapture %}
Consider the problem mentioned in the [A-Frame XR blog post](https://blog.mozvr.com/responsive-webxr-a-painter-xr/), that of drawing on the world via the touch screen. This is a hard problem, and an area researchers have been exploring. For example, in their “[Anchoring 2D Gesture Annotations in Augmented Reality](http://cs.ucsb.edu/~bnuernberger/vr_2016_bnuernberger.pdf)” paper{% sidenotevar "anchoring" ca-cite %}, researchers at UC Santa Barbara explored ways of inferring where in space a 2D drawing might best be located; similar techniques are being explored by other researchers and companies, along with a host of other custom computer vision techniques to support AR interaction and applications.

There is no reason that such techniques couldn’t be built into web applications, if the data could be provided efficiently and with the necessary metadata to enable computer vision applications to run across the range of XR platforms.

# Moving Forward

These five areas are examples of the sort of issues that need to be tackled and solved if WebXR is to support the kinds of non-trivial AR applications people will want to build once WebXR becomes a reality. 

I want to encourage everyone to think about what capabilities they need to create the kinds of applications that excite them, and to get involved in the [Immersive Web Community](https://github.com/immersive-web) to make sure that the web becomes the best place to create, share and experience AR and VR content and applications.

_(This post also appears on Medium at https://medium.com/@blairmacintyre/webxr-reflecting-on-the-needs-of-real-ar-on-the-web)_