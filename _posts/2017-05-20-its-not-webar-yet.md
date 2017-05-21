---
title: "A Great Demo, But Not WebAR (yet)" 
date: "2017-05-20 07:18:45 -0400" 
author: blair
layout: post
permalink: "/2017/05/20/its-not-webar-yet/"
categories:
- commercial
tags:
- googleio
- webar
- tango
---
As part of [GoogleIO](https://events.google.com/io/) this past week, Google released some [sample code](https://github.com/googlevr/chromium-webar) on github for a little demo that exposes Tango's sensing into Chromium.

At the top of the README it says: 
>This project's goal is to provide an initial implementation of a possible Augmented Reality (AR) API for the Web on top of Chromium. The initial prorotype is built on top of the Tango platform for Android by Google. Maybe, more platforms will be supported in the future. There is a precompiled and working prototype you can use right away along with documentation of the APIs and some examples. There is also a tutorial on how to build your own version of modified Chromium with the WebAR APIs in it.

>A major objective of this project is to get a conversation going on the subject of how to provide Augmented Reality capabilities to the web: WebAR.

{% marginnote "aronweb" "In 2009, we started the [Argon](http://argon.gatech.edu) project at Georgia Tech, and my students and I have released four versions of the Argon AR-capable web browser over the years, most recently [Argon4](https://app.argonjs.io) and the [argon.js](https://argonjs.io) framework. Last November, I joined the Emerging Technologies group at Mozilla to work on WebAR. My most recent talk on WebAR was the keynote at [Philly ETech 2017](https://2017.phillyemergingtech.com/session/the-web-as-platform-for-augmented-reality-experiences/). I usually present using Argon4, using a mix of 2D and AR, my ETech slides are available to look at [here](https://blairmacintyre.github.io/philly-etech-2017/#/), although they might need me talking through them to make the most sense."%} Since I've been working on bringing AR to the web for quite a few years, and have been giving talks on my ideas for WebAR since last December, I'm happy to see Google release this and bring attention to WebAR. This prototype demonstrates that it is possible to do platform-accelerated AR in a mobile web browser, and gives us something tangible to talk about. 

I will also note that the README also says:
> Defining how a web standard will look like is a complex conversation. All the code and proposals in this project are not meant to be the definitive implementatios of AR capabilities for the web, but some prototypes you can play around with at your own risk and have some starting point to build upon.

{% newthought "So, with that in mind" %}, while this Tango project is a very nice tech demo, how  does it measure up as a proposal for WebAR?  

**TL;DR:** *As a demonstration of exposing Tango tracking into Javascript, it's great. As a proposal for WebAR, starting with WebVR is a good idea, but the proposed extensions go about this the wrong way by requiring the application to render the view of reality inside the webpage.*

## From WebVR to WebAR

First and foremost, the idea of extending WebVR to support AR is a good one, and I agree that WebVR is the right starting point for WebAR.{% marginnote "webvr" "If you skim the [W3C WebVR Spec Respository](https://github.com/w3c/webvr) you'll see that many of us are also interested in taking this approach."%}  WebVR has already "solved" the problem of doing real-time, high-performance 3D VR rendering in a web browser.  

For those not familiar with WebVR, it integrates native VR SDK's (Oculus, SteamVR, etc.) into web browsers, and presents them in to web developers in a uniform way. A WebVR web application uses WebGL to render frames for a VR display based on data from the underlying VR tracking and interaction devices, using whatever web frameworks the developer wants ([threejs](http://threejs.org) is a common 3D library that works well with WebvR). WebVR works amazingly well: if you haven't looked at high performance 3D on the web in a while, you'll should try it out. Tools like [A-Frame](https://aframe.io) make it easy to create simple VR experiences that you can host on your own website (WebVR isn't officially released in most browsers, but should be this year: if you haven't tried it, download one of the [Firefox Betas](https://www.mozilla.org/en-US/firefox/channel/desktop/) and try out the [A-Frame](https://aframe.io) demos).

The WebVR architecture is pretty simple, at a conceptual level.  After initializing WebVR, your webpage can submit frames (rendered in a WebGL _canvas_) to the WebVR implmentation. 

{% maincolumn 'assets/images/sketch-webvr-arch2.png' "A sketched architecture of a browser with WebVR, that I drew for a talk I gave on WebAR last December." %}

The browser takes care of calling the web pages at the right framerate, with the current VR device data, and passing the submitted frames to the underlying SDK's, which in turn takes care of rendering them on the VR display.  

## The Right WebAR Extension to WebVR?

So, the question is, what's the right way to extend WebVR to support AR.  We won't have a platform-accelerated prototype of WebAR at Mozilla until later this year, but have been working on this problem, and exploring what might be possible with web-based AR using the [Argon4](https://app.argonjs.io) browser with a combination of [argon.js](https://argonjs.io) and [A-Frame](https://aframe.io).{% marginnote "moresoon" "I'll be blogging more on this soon!" %}

What this google code does is pretty straightforward: use the Tango spatial tracker as the VR tracker (good), make the point cloud data available to the app if it wants it, and provides the video to the web app in a texture for rendering in the background of the web page.  On the surface, this seems pretty reasonable.  If you look at how people have thought about AR web applications up to now, this follows that model: get the video (usually via WebRTC's _getUserMedia_), do some computer vision on it (perhaps via a library like [JSARToolkit](http://github.com/artoolkit/jsartoolkit5)) and render the video with some 3D graphics using a WebGL canvas.

However, AR on the web has been done this way because it was _the only way it could be done_. And this approach presents a number of problems in the context of the web, which I'll split into  _Platform Independence_, _Performace_, and _Privacy_. 

### Platform Independence

A primary goal of a WebAPI like this (one that WebVR handles reasonably well) should be to allow web applications to run across a wide variety of different sorts of "user agents" (web browsers or other programs that display web content), letting developers create applications that users can consume on their preferred platform. 

The tight coupling to the platform is the first problem with this approach to creating Web-based AR. By forcing the application to deal with  rendering video from the camera, you limit applications created this way to platforms that create AR by putting graphics on a top of video from simple camera;  if a different setup is used, applications would need to deal with each different platform configuration. 

While handheld devices are the primary way people will experience AR/MR right now, more promising approaches use different approaches.  Microsoft's Hololens (and other displays like Daqri's Smart Helmet) are optically transparent:  there is no video to render (and no need to access the camera at all). Worse, other systems (such as [video-mixed displays that combine video with depth data to render video from the user's actual eye point](http://blairmacintyre.me/2017/05/14/wanted-from-apple-the-idream/)) will need to handle presenting "the view of reality" to the software themselves, so an API  that hands video into a web app and expects it to render it is impractical.

Beyond video, the depth data is presented to the application in a way that is coupled to the underlying Tango implementation. Windows Holographic uses similar depth sensors and SLAM-based reconstruction, but presents the data to the programmer in a different form. Apple is rumored to be working with similar technology (having bought multiple companies over the years that develop hardware and software of this sort), and may use one of these representations, or opt for something entirely different.  Relatively speaking, this is probably minor, since we don't yet have a good common format;  it may be that each platform will present the data differently, or the underlying WebAR implmentation will need to convert between representations.  Time will tell.

### Performance

Even if you are willing to ignore _platform indepence_, passing the video into the application (in a WebGL texture or Javascript buffer) and having the application render it eliminates any opportunities for platform-specific optimizations.  

What if your hardware can efficiently preload video into the GPU and composite it with another render buffer on-the-fly during rendering, without "rendering" that video as a texture to a polygon?  Or if you could leverage techniques like WebVR's [Time Warp](https://xinreality.com/wiki/Timewarp) or [Space Warp](https://xinreality.com/wiki/Asynchronous_Spacewarp) to display the very latest video frames at rendering time, instead of the video frame that was available when the application started rendering?  

Delegating rendering of reality to the application eliminates any of these opportunities.  And, as modern VR SDK's have demonstrated, agressive optimizations will be needed if we try using video-mixed AR in head-worn displays.  With video-mixed AR, the latency from when a camera begins to capture a video frame in its sensors until it is available for rendering on the screen is too large (by itself) for use in an HMD without predictive rendering of some form.

### Privacy

While not often discussed in the context of AR API's (unfortunately), any proposal for WebAR should consider how to give user's control over their privacy while getting the benefits of AR.  

The approach used in this sample, if implemented in a real web browser, would likely ask if the web application could access the camera (and perhaps ask about the depth data too), following the approach of current web APIs.  That's all well and good, but this architecture would mean that users only have two choices: don't use AR applications _at all_, or give incredibly detailed information (essentially, a 3D texture-mapped model of the space you are in, the people you are with, etc.) to every AR web page.

If you think about AR as "rendering graphics on top of video", you might imagine that all AR applications _need_ this information to function.  But why? If the underlying platform can take care of presenting a view of reality, and the platform SDK's like Tango are already doing the complex tracking and sensing needed for AR, could AR applications get by with less access?  

This is an especially important question on the web, because unlike native applications, which tend to be intentionally downloaded ahead of time from an app store of some sort, a user may need to grant access to sensitive data on-the-fly as they follow a link to an unknown site. 

Even if a user knows which site they are visiting, a good WebAR implementation should allow them to leverage the power of AR without giving applications this incredibly detailed and possibly sensitive data.  The approach proposed here is all or nothing: let the app build a 3D texture mapped model of your space, which it could send off to the cloud and use for whatever purpose it might want, or don't use AR web pages.  

## Can we do better?  

Yes, we can.

The history of the [Argon](http://argon.gatech.edu) project is instructive, and shows how we arrived at an architecture that addresses these concerns. _Argon1_{% sidenote "ismar11" "B. MacIntyre, A. Hill, H. Rouzati, M. Gandy and B. Davidson, [The Argon AR Web Browser and standards-based AR application environment](http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=6162873&isnumber=6162843), in _ISMAR 2011_, Basel, Switzerland, pp. 65-74." %} wasn't a standard web browser, using an AR-specific derivative of KML{% sidenote "kml" "[developers.google.com/kml/](https://developers.google.com/kml/), the markup used by Google Earth and Google Maps." %} we called KARML{% sidenote "karml" "[KARML Reference](https://research.cc.gatech.edu/kharma/content/karml-reference)" %}. With _Argon2_ we switched to a more traditional web browser model, and took the simple approach (akin to what's proposed here) of passing the underlying sensor/tracking data directly into the web apps so they could render as they wanted. 

But as we started thinking about porting to other sorts of platforms (e.g., see-through head-worn displays, or projection displays{% sidenote "roomalive" "Jones, et al. [RoomAlive: magical experiences enabled by scalable, adaptive projector-camera units](https://doi.org/10.1145/2642918.2647383), in _UIST 2014_, ACM, Honolulu, USA, pp. 637-644." %}) and developed some more sophisticated ideas for delivering AR on the web (e.g., how to support multiple simultaneous applications and custom representations of reality, discussed [below](#beyond-basic-webar)), we began to define a more platform-indendent set of abstractions during the development of _Argon3_{% sidenote "hcii" "Speiginer G. et al. (2015) [The Evolution of the Argon Web Framework Through Its Use Creating Cultural Heritage and Community–Based Augmented Reality Applications](http://link.springer.com/chapter/10.1007/978-3-319-21006-3_12), in _HCI 2015_, Springer LCS vol 9171, Los Angeles, USA, pp 112-124."%}. These abstractions formed the basis for the [argon.js](https://argonjs.io) framework and the implementation of the current [Argon4](https://app.argonjs.io) browser{% sidenote "argon4" "The design and development of Argon4 and argon.js was led by a student in my lab, Gheric Speiginer."%}.

Building on the ideas developed in _Argon4_, here is what an architecture for WebAR might look like.  The key take-away from this diagram is that presentation of the _view of reality_ (in this case, the video) is handled _inside_ the browser, and information is passed to the web page only if needed by the web application (and approved by the user). (In Argon, we are limited to using the built-in WebViews, so we render the reality in a separate web page _behind_ the AR pages, but with a true implementation of WebAR, this compositing can be handled correctly and efficiently inside the browser engine itself.)

{% maincolumn 'assets/images/sketch-webar-vision.png' "A sketch outlining a vision of an architecture for WebVR, created last December." %}

{% newthought "There are multiple things" %} happening in this diagram. 

The core idea is to extend WebVR's _layers_ to allow the browser itself to render a view of reality behind the application content. If we took this approach with this Tango implementation, the video texture (and associated rendering) could be completely removed from the application. As with WebVR, the application would know it's pose relative to the local space, and render it's 3D graphics appropriately.  Whether (or if) the application has access to Tango's point cloud could be handled separately.

Some applications may want access to the video, for doing advanced rendering or custom computer vision. That should still be possible, and could be provided to the application synchronously with the WebAR render loop. In this Tango implementation, it's provided in a texture. In this diagram, I envisioned using _Workers_ of some kind to receive and render video frames synchronously, but any similar approach (providing video frames in multiple forms, or combining browser-based vision processing with native processing via [OpenCV](http://opencv.org) or [OpenVX](https://www.khronos.org/openvx/)) would work.  

The key is that providing video (or other sensor data, such as point clouds or world meshes) to every web application is not an absolute requirement for WebAR.  Perhaps an application could refuse to run without this data, or perhaps it could run with limited features (e.g., without the mesh, objects could only be placed on "the floor";  without video, shiny objects might not have pretty reflections of the world).  But it should be possible to build WebAR applications that give user's the benefits of AR without requiring them to expose detailed sensing of the world around them to any and all web application developers.  

## Beyond Basic WebAR

While not central to this discussion, this architecture envisions that WebAR could then support many simultaneous web applications rendering at the same time. All of your AR content (from work, to games, to search, to social applications) could be mixed in your view, under your control (this pre-supposes new browser UIs that give users control of which, and how many, web apps are simultaneously displayed).  We've taken this approach in our [Argon4](http://app.argonjs.io) browser, although we have not yet explored the UI issues it brings up.

This architecture also envisions browsers supporting multiple representations of reality, including "realities" created by application programmers, a feature we developed as part of [argon.js](http://argonjs.io).  In the AR/MR community, we tend to focus on AR/MR as "mixing media with a user's view of the world around them", but a more practical definition is "mixing media with a user's view of the world".  If someone has created an tour of Notre Dame Cathedral in Paris, can I experience the tour without visiting Paris? Could I show that tour to a class of school children studying Notre Dame? Why not allow the user to overlay that tour on some representation of the world, such as Goolge Streetview (if you visit Streetview, it combines their outdoor panoramas with user created panoramas inside the cathedral).  

Or perhaps a synthetic view of the world could be generated from open data (such as [Open Street Map](http://openstreetmap.org) data)?  While not "the same as being there", giving user's control over how to experience "augmentations of reality" should be a goal of any implementation of AR on the web (just as WebVR experiences can be viewed in browsers without VR gear).  In [argon.js](http://argonjs.io), we have examples of "realities" created with local live video, StreetView and sets of geolocated panoramic images.  We're working on generating models of any part of the world (e.g., like the views generated by [ViziCities](https://github.com/UDST/vizicities) project, building on sites like [MapZen](http://mapzen.com)).

## Moving Forward 

The core idea presented here, that _the presentation of the view of reality should be managed inside the browser_, is an essential component of any future implmenetation of WebAR, and is missing from this tech demo.  

This idea is essential if WebAR is going to enable developers to create AR applications that run across many platforms, achieve high performance while still providing the necessary flexibility developers will want, and give users the benefits of the Web ecosystem (especially choice of which user agent they use, and control over what information they share with web sites and web applications).

So, in summary, this Tango demo is a great first step, and demonstrates it is possible to implement WebAR. As a proposal for WebAR itself, it's also starting in the right place by building on WebVR, but the relationship between the underlying platform and how programmers present content over the user's view of reality needs to be rethought.  

I look forward to this conversation continuing, and the work that will be happening over the coming year! 
