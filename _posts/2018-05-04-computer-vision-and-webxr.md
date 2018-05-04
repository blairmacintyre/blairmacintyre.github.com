---
title: Computer Vision and WebXR
date: '2018-05-04T16:08:14-04:00'
author: blair
layout: post
categories:
  - research
  - webxr
tags:
  - computuer vision
  - webxr viewer
permalink: 2018/05/04/webxr-cv
---
I'm exciting to finally share a pointer to a [blog post about some experiements I've been doing at Mozilla on how to do computer vision in WebXR](https://blog.mozvr.com/experimenting-with-computer-vision-in-webxr/).  Most of the interesting part of this is how we exposed video frames, camera intrinsics and extrinsics, and how we simplify synchronizing poses from an asynchronous computer vision thread back to ARKit Anchors, rather than the particular computer vision algorithms.  

We mostly just use some pretty standard stuff from [OpenCV](https://opencv.org/) to demonstrate the APIs.  [OpenCV can now be compiled](https://docs.opencv.org/3.4/d5/d10/tutorial_js_root.html) into Web Assembly (a standard build target since December 2017) and run in a web page or [Web Worker](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Using_web_workers), opening the door to doing more sophisticated custom computer vision on the web that can integrate with a nice responsive 3D page even if the CV doesn't run synchronously.

Here's a demonstration where OpenCV's Aruco marker tracker is running at < \~25 fps, but the graphics are rendering at \~60 fps.  I use ARKit anchors for the content attached to markers, so the content remains fixed in the world even if the video blurs or the markers are occluded.  Fun stuff!

![](/assets/uploads/aruco-1.gif)

Go read the article if you'd like to know more.
