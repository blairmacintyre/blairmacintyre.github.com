---
title: "Argon4 Open Sourced, App available on Android and iOS" 
date: "2017-07-26 11:42:37 -0400" 
author: blair
layout: post
permalink: "/2017/07/26/argon4-on-android-and-ios/"
categories:
- Argon
tags:
- Argon4, open source, mozilla
---
{% maincolumn 'assets/images/argon4-source.gif' "Download and compile, lets make Argon4 great!" %}

This post is long overdue, since we finished this work back in June, but better late then never!

I'm excited to share that, with the release of the [source code to the Argon4 browser](https://github.com/argonjs/argon-app), our Argon project is now fully open sourced. 

While the app source still needs some cleanup and a bit of massaging to make the build process a bit less fiddly, thanks to support from [Mozilla](https://mozilla.org) the port of Argon4 to Android is done (it's been available in the [Google Play Store](https://play.google.com/store/apps/details?id=edu.gatech.argon4) for the past few months) and the source available for all to see and use.

The source is set up so you can compile the browser, minus the security keys needed to decrypt the Vuforia license keys created with our [Vuforia PGP Encryptor](https://docs.argonjs.io/start/vuforia-pgp-encryptor/) site. This will let you build and work with the app, enhance it as you see fit, add features or fix bugs.  We are happy to take pull requests;
of course, if you are thinking of adding features, we encourage you to discuss it with us and the community (in an issue on the github repo, or on our [Community Forums](https://community.argonjs.io/)).  For example, we've been thinking about modifying Argon4 on iOS to support Apple's upcoming ARKit, and we'd be happy to have the help.

We will be sharing other updates soon, as we make Argon4 more capable and enhance argon.js to work in more environments.  In the meantime, Enjoy!
