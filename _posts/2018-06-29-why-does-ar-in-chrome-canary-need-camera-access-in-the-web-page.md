---
title: Why does AR in Chrome Canary need Camera Access in the Web Page?
date: '2018-06-29T08:57:34-04:00'
author: blair
layout: post
categories:
  - webxr
tags:
  - chrome
  - ar
  - privacy
  - permissions
permalink: 2018/06/29/camera-access-webxr
---
I finally got around to digging out one of my Android dev phones (a Pixel), recharging it, updating it (a non-trivial endeavor, it's been off for months!) and installing the [AR-capable via WebXR](https://developers.google.com/web/updates/2018/06/ar-for-the-web) version of Chrome Canary.  I was [pleased when Google announced it](/2018/05/14/-canary-webxr) last month, and the demos don't disappoint: everything seems to work just as you'd expect.

{% maincolumn 'assets/uploads/demos-chrome.png' "Two of the Chrome Canary WebXR AR demos." %}

Well, almost everything.  

The first time I ran each demo, it asked for camera permissions.  

{% maincolumn 'assets/uploads/permissions-chrome.png' "When I click \"Start AR\" in the web page, Chrome asks me for permission to let the web page access the camera." %}

Why should a WebXR _web page_ need permission to "use your camera"?  What does that mean?  It sure sounds like the web page is asking for access to the camera, and will be able to see the video.   

{% newthought "I understand" %} that if users can see the camera video, they may not distinguish between _the browser_ having access to (using) the camera and _the web page_ having access to it.  And I know the Chrome team is the first group to struggle with this difficult question: I'm picking on Chrome's approach to dive into this issue a bit, because this difference is important.  

> I don't want AR web pages accessing my camera frames all the time, unless I trust the page, and know that it is using the video frames to provide value to me. 

> We need to help users understand that the browser needs access to the camera, in order to render the video and to run ARCore, but that the web page may not get the same information. 

And while I realize I'm much more "AR tech saavy" that the average person,  it seems to me that it will be confusing to users in the long run if we don't make these distinctions, since it implies the web page has access to the camera _data_, when it may not.  

{% newthought "Let me repeat" %} this, more strongly: I  think the difference I'm calling out is _critically important for users, and for the success of the Web as a platform for AR_.

When I give talks about WebXR, one of the key advantages of web-based AR over native app AR that I highlight is that you, a user, can get the benefits of AR applications without giving the authors of those applications access to detailed knowledge of the world around you (detailed meshes, camera frames, etc). If you run native AR apps (such as those written with ARKit or ARCore, or SDK's like Vuforia), you have to "give away the farm" in terms of privacy.  Want to play a cute little AR game?  I hope you've checked out the author of that app to make sure you trust them having the full 3D reconstruction of the space you play it in, because it's trivial for them to get this kind of model of your space in an ARKit or ARCore app.{% marginnote "recon" "ARKit and ARCore don't provide this 3D structure directly, but the process shown in the video in this tweet is well known in the computer vision community.  It's been difficult to do in practice with just a camera, but when you have an accurate 3D position of each camera frame provided by ARKit or ARCore, the difficulty goes away."%} 

{% twitter https://twitter.com/nobbis/status/972298968574013440 %}

{% newthought "When we created" %} the [WebXR Viewer](https://github.com/mozilla-mobile/webxr-io) to experiment with ideas for WebXR, one of the questions we struggled with was how to help people understand what information web pages had access to, and what information the browser (but not the web page) had access to.

It's clear that users need to give permission to _the browser_ to access the camera; any ARKit or ARCore app needs user permission.  It should be made clear to the user why the browser needs access, **but** it should also be made clear to the user when _the web page does or does not have access to that data_.

In the WebXR Viewer, we had one advantage: the whole point of the app was to run WebXR AR web apps, so we lead the user through the permissions we need once when they install the app, just as most apps do.  The image on the left shows the initial permissions screen.

{% maincolumn 'assets/uploads/permissions-webxr-viewer.png' "Initial permissions for the WebXR Viewer, and explicit per-page permissions if the page wants access to camera video frames." %}

The image on the right shows the permissions we ask for if the web page _actually_ wants permission to access the camera (to be clear, the WebXR APIs do not yet support direct camera access, this access was provided by [an experimental API that we created to explore this permission issue and how web-based computer vision could integrate with, and take advantage of, WebXR](https://blog.mozvr.com/experimenting-with-computer-vision-in-webxr/)).

As I said above, I understand that if users can see the camera video, they may not **yet** distinguish between the browser and the web page having access to it. But, it is our job to educate them and help them understand what they are actually consenting to.  By not distinguishing between these two cases, and helping users understand the difference, where are doing users a massive disservice. People need to understand what data they are giving away, and when; they need to understand that native AR apps have access to shocking amounts of data, and that web-based AR apps can provide a range of access, such as:

* Just the pose data of the camera, and the 3D location of places in the room the user taps on the screen.  _A permission could ask "Chrome wants to use the camera to display video and provide AR capabilities to immersive-web.github.io. The web page will not have access to the video"_.
* Abstract structural information about the world, such as planes or illumination, and eventually access to native sensing (like detecting certain images, or faces like on the iPhoneX).  _A permission could ask "Chrome wants to use the camera to display video and provide information it detects about the world around you to immersive-web.github.io. The web page will not have access to the video"_.
* Full access to camera and sensor data, with the corresponding privacy and security risks. _A permission could ask "Chrome wants to use the camera to display video and provide video images to immersive-web.github.io"_.

(I'm not tied to the exact wording, but I think the difference is important.)

As other companies integrate web-based AR (via WebXR) into mainstream browsers, I hope we can all try to help users understand these differences and provide informed consent to web applications.
