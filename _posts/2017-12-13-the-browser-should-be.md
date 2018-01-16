---
title: WebXR Browsers Should Put the User in Control
date: 2018-01-16T20:57:32.000Z
author: blair
layout: post
categories:
  - webxr
  - argon
  - musings
tags:
  - enterxr
---
Today, when you visit a web page that contains WebVR content, the page itself presents an interface to let the user transition into VR.  For example, a page on [sketchfab.com](https://sketchfab.com) contains a small image of a VR display in the toolbar overlaid on the 3D scene (the third icon in from the right): 

{% maincolumn 'assets/uploads/sketchfab-1.png' "A typical page on sketchfab.com, showing a 3D scene with various controls overlaid along the bottom edge." %}

In a world where most web browsers do not have a built in UI for VR, this has makes sense.  But, as we move toward more pervasive support for WebXR in browsers (both VR and AR), the browsers themselves should offer a consistent UI to users, based on the hardware they have and their preferences.  

If a user is browsing this web page on a phone, has a VR display attached to their computer across the room and is wearing a stand-alone AR display, they might want to view the content in AR or "magic window VR" on the phone (using ARKit or ARCore for tracking), or send the page to their VR or AR displays. The web page couldn't (and likely shouldn't, for privacy reasons) know about the range of devices available to the user, but the browser could.

In the above image, for example, Firefox (the browser used here) could have a VR button beside the Home button to the left of the URL bar, giving the user direct access (and control) over when and how to switch to VR or AR. The specifics might be different, but the idea is critcal for WebXR to be successful.
