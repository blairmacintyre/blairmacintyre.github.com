---
id: 433
title: Could the Achilles Heel of Project Glass be the Camera?
date: 2012-09-17T09:39:14+00:00
author: blair
layout: post
guid: http://ael.gatech.edu/blair/?p=213
permalink: /2012/09/17/the-achilles-heel-of-project-glass-the-camera/
categories:
- commercial
tags:
- displays
- camera
- Glass
- privacy
---

I've been contemplating Project Glass recently, imagining what the user experience of wearing one might be.  While I'm increasingly looking forward to trying one out, one problem that keeps coming to mind is the social acceptability of walking around with a camera pointing at everything I look at.   The more I ponder it, the more concerned I am that if Google isn't careful, Project Glass may crash and burn, and set back public acceptance of head-worn displays quite a bit, because of that darn camera.

It may seem counter-intuitive to assert that its camera could be the downfall of Google's Project Glass.  After all, much of what gets shown off during Glass demos is it's ability to grab pictures and movies with little to no effort.  Movies while swinging a kid in the backyard, or while falling through the sky.  Pictures of talk show hosts and beautiful people at fashion shows.  Much of the devices ability to sense a wearer's context and proactively provide serendipitous information and opportunistic interaction depends on the camera.

Theres a huge problem with the trajectory of their current design, however:  _the people being looked at can't tell if the camera is taking pictures_.  Privacy and security aren't about _me_ (the wearer), they're about _you_ (the targets). As a huge enthusiast for mobile augmented reality, and  someone who's looking forward to trying one out, I'm uncomfortable that Google seems not to"get" this or be taking it seriously.

During the demos, you see Sergey and others make a cute hand gesture on the arm of the Glass to trigger a picture;  some might naively say that's enough to signal to someone else that a picture has been taken.  But, it's obviously not:  while in that one instance we know a picture is being taken,  how do you/me/we (the _targets_, again) know that this is the _only_ time a picture is being taken?  And there lies the problem.

Early iPhone developers who wanted to leverage the camera on an iOS device will remember Apples tight control over access to the camera.  For years, it was impossible to grab images from the camera without using the built in image capture widget; and even then, it was impossible to capture images without the loud faux-camera-shutter sound!  When we created [Arf, the iOS virtual pet](http://ael.gatech.edu/lab/research/handheld-ar/arf-iphone/) years ago, we couldn't release it because of the hackery involved with accessing the camera in real time.  One of the reasons apple was so careful with camera access was a desire to make **both** the _user of the phone_ and those _near the phone_ comfortable knowing if and when pictures were taken.

And while the restrictions on developers have eased, Apples careful approach was largely successful.  As a society, we've adapted to camera phones.  We know that if someone is holding up their phone, they might be taking pictures.  Locker rooms at athletic clubs now regularly ban camera phones, for obvious reasons.  Some high security government agencies entirely disallow phones on the premises.

But (practically speaking) it's extremely hard to take pictures with a phone without your target knowing.  Try facing someone you don't know, holding up your phone and pointing it them;  it's easy for them to see you do this.  Now imagine pointing it at a couple with their arms around each other on a park bench;  at children you don't know on a playground;  at an attractive person of the appropriate gender in a coffee shop or bar.  It's easy to imagine, shall we say, a "diversity" of reactions.

Now consider what will happen when people realize (or imagine) that folks wearing Glass are pointing cameras at them, all the time, every minute they are nearby, and could be recording everything they see and hear.

Consider the[ bizzarre recent altercation in a Paris McDonalds between Steve Mann and the employees](http://www.huffingtonpost.com/2012/07/17/steve-mann-attacked-paris-mcdonalds-digital-eye-glass-photos_n_1680263.html#slide=1236819).  We may never know what really happened, if Mann was at fault (perhaps provoking the employees in some way) or if the employees were at fault (over-reacting to something that made them uncomfortable).  What is clear is that during this episode Mann was taking pictures of the whole thing, and by extension, likely to be taking picture of anyone and anything he looks at, all the time.  While he hid the employees faces in the pictures he posted, the point (that is largely being ignored by the media and wearable enthusiasts) is that he was taking pictures continuously, and  could later choose a set to post, a set that supported his point.  It's not hard to imagine what will happen when thousands of people are "wearing" and able to mine the images/video/audio they've been capturing as they go about their day.

A first step toward heading off possible problems is obvious:  Google really needs to take this seriously.  At a minimum, they need to ensure that **any time** the camera or microphone is operational, there is visible (and perhaps auditory) feedback available to those near the camera. There should be one kind of feedback when the camera or mic is operational at all (even if just in preview mode), different feedback when an image is captured and passed to an app on the device or stored in the camera roll, and perhaps a third sort of feedback when video or audio clip is being captured. And this really has to be done at the** hardware level**, not at the OS level (since the OS will likely be open like Android, to support research) and certainly not left up to app developers.

Doing this right is a serious challenge.  A simple LED on the front could easily be covered with tape;  so  something might need to be integrated into the camera lens assembly so it can't be covered without destroying the cameras ability to capture images.

Whatever the solution, it would be a shame if the camera, the thing that gives Glass much of its power and appeal, might also be its undoing.
