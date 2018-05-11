---
title: >-
  Hey Engadget, Google Didn't Invent WebVR (and They Aren't Inventing WebXR,
  Either)
date: '2018-05-11T11:08:12-04:00'
author: blair
layout: post-full-width
categories:
  - webxr
tags:
  - engadget
  - press
  - google
permalink: 2018/05/11/google-is-not-doing-this-alone
---
I've been interviewed and had what I say misrepresented by the press enough to know that my friends at Google working on WebXR probably aren't trying to give the press the impression that they created WebVR and invented the idea of doing AR on the Web, either.  

(Heck, my research group at Georgia Tech started working on a web-based AR browsers when we started the [Argon Project](http://argon.gatech.edu) back in 2009, and we're now on the fourth version of the browser on iOS and Android, and have a pretty nice [open source AR framework called argon.js](https://argonjs.io).  WebVR was started at Mozilla three years ago, and Mozilla released the first widely available implementation in Firefox more than a year ago. Building on both of these projects, my colleagues and I at Mozilla [proposed an initial version of WebXR](https://github.com/mozilla/webxr-api) last fall that supported both AR and VR, and even implemented it in an [experimental web framework](https://mozilla/webxr-polyfill) and browser for iOS (the WebXR Viewer) that we and others are still using to do AR experiements.)

But you'd never know that if you read this [piece from Engadget and watched the embedded video](https://www.engadget.com/2018/05/09/google-augmented-reality-chrome/), where the author says they created WebVR three years ago, and introduced the idea of WebAR in January.

In the end, it probably doesn't matter who invented what, but given the massive amount of work all the members of the [Immersive Web Community Group](https://github.com/immersive-web) are doing (not just Google and Mozilla, by Microsoft, Samsung, Oculus, and others), it's a bit annoying when the press does this.

I'm excited to see Google ship an experimental version of the WebXR Device API in Canary;  we're waiting until the WebXR Device API is a bit more settled before converting the WebXR Viewer to use it, or ship it in a version of Firefox.
