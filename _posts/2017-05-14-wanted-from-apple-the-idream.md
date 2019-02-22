---
title: 'Wanted From Apple: The iDream, Daydream meets Tango'
date: 2017-05-14 08:53:42 -04:00
permalink: "/2017/05/14/wanted-from-apple-the-idream/"
categories:
- commercial
- musings
tags:
- apple, tango, daydream, mobile
author: blair
layout: post
---

Amid the rumors of Apple working on an AR gadget, I've been thinking about what I'd like to see.  Now, it seems clear that a full-blown, standalone immersive 3D AR display isn't going to happen anytime soon, but given their assets and what's been happening in the AR/VR tech world, here's one possibility I find interesting.

First, consider what's going on elsewhere.  Google's Tango and Microsoft's Hololens do full-blown SLAM (Simultaneous Localization and Tracking), able to build real-time meshes of the world and use them for tracking.  Facebook (and Microsoft) have shown some interesting implementations of mono-SLAM (SLAM with a single camera) in recent annoncements (at F8 and the recent Windows 10 S events).  And, Google's Daydream and Samsung's GearVR show the benefit of embedding addition sensors in a "box you put your phone in to get a VR display", creating much more responsive and powerful experiences than generic "cardboard" display holders.

Apple bought Primesense years ago (an early depth camera company, a core technology in Tango and Hololens), and more recently bought Metaio (who had the beginings of a mono-SLAM implementation at the time).  More importantly, they control their ecosystem, so they can make assumptions about the devices they need to support and embed software in the OS as they wish.

I'll call what I want to see the _iDream_ (in a nod to Google).  A Daydream/GearVR style holder for an iPhone, that has stereo cameras and SLAM-capable hardware.  On-board hardware would do Tango/Hololens style SLAM, perhaps along with hand tracking, and the resulting mesh / tracking data plus stereo video could be sent to into the iPhone. Movement prediction could be handled properly because the system is closed, reducing or eliminating swim. The iPhone would only need to take care of rendering and running the applications:  after all, the CPU/GPU in an iPhone blow the Hololens CPU/GPU out of the water. (They iPhone7 blows away the current Tango phone, the Lenovo Phab2 Pro, and this setup would impose even less load on the phone.)  

In our [Argon4 and argon.js](https://argonjs.io) system, we've already shown the value of separating the view of reality (in this case, the textured depth map) from the application, eliminating the need to impose rendering load on the application. Argon4 is limited by what we can do with Apple's _wkWebView_;  Apple will be able to efficiently combine the background view with application-generated content, more in line with what _WebVR_ does to combine native sensors and rendering.

This setup would enable full 3D immersive AR _now_, without burdening the phone with additional battery-sucking and weight-imposing sensors that non-AR user's wouldn't care about.  Integrating stereo cameras with a depth mesh in a controlled, carefully calibrated package could allow the video to be projected into the mesh, solving some of the usual problems with video-mixed HMDs (caused by the camera center of projection not aligning with the viewers eye's:  by reprojecting the video onto the mesh, and rendering from the viewers eye positions, a more compelling view could be generated, with less artifacts.)  Interestingly, Microsoft could take a similar approach with their upcoming _MR Displays_, although I've seen no indication they're thinking about this.

Anyway, that's my half-baked musing on whatever upcoming announcements we can expect.  And with Google IO happening even sooner than Apple's Dev Conference, perhaps Google will beat them to the punch.  _TangoDream_, anyone?