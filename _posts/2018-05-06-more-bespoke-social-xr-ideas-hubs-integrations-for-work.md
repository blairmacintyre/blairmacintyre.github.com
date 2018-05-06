---
title: 'More Bespoke Social XR Ideas:  Hubs Integrations for Work'
date: '2018-05-05T09:41:46-04:00'
author: blair
layout: post
categories:
  - webxr
tags:
  - social
  - slack
  - integration
permalink: 2018/05/05/bespoke-xr-work-hubs
---
{% marginnote "social" "Hubs is obviously important because it keeps the door open for Social XR systems and experiences that aren't beholden to specific platforms, and don't require you to abandon privacy or control like you might if you could only use platforms from certain big companies whose business is about monetizing you." %}I wrote a couple of weeks ago that the exciting thing for me about the [Mozilla Hubs](https://hubs.mozilla.com) release is the potential for customizable, on-the-fly social XR: [_bespoke_ social XR worlds](/2018/04/26/bespoke-social-xr). The openness of the web and the potential to control your platform, privacy and content are super-important, but if that's all web-based social XR has to offer, many people may not care:  recent history is filled with examples of people choosing free, convenient and pervasive systems over open, privacy-preserving ones, even when they know these closed platforms are problematic in many ways.{% marginnote "facebook" "Heck, I talk about the problems with Facebook all the time, but still have an account."%}

What will get a lot of people using open, web-based, social XR is not the architecture, but compelling applications. I offered educational applications as an example in my previous post, but that's just the tip of the iceberg, and in some ways a niche domain. Think about more pervasive, business oriented systems like github, trello, and slack.  Aside from providing useful services in and of themselves, a key to their rapid success is how they integrate with other web-based systems.  Github commits and issues can be tied to all kinds of systems;  slack has tight integration with dozens of other systems like Google docs and Dropbox.  And so on.

{% newthought "Imagine adding Hubs" %} to the mix. Systems could be built where every github repo, every slack channel, every trello board or card, every google document could have on-the-fly autocreated rooms that are automatically populated with relevant content pulled from the system, and hubs links shared with the right set of people automatically.  

In a slack chat channel? Perhaps you'll type `/hubs "let's meet"` and a Hubs room is created with recent content from that channel (pictures? links? docs?) autopopulated in the space, perhaps displaying the the live slack channel on the wall. The link to the Hub is sent back to slack, so everyone in the channel can just click-to-join. Want to add more content?  Just drop it in the slack channel at any time and it appears in the room.

There are some big challenges to make this work completely seamlessly. For example, WebXR is uses pure WebGL, so no browsers could display live HTML content in them from dynamic web content (like google docs),  but a lot of non-dynamic content could be supported incredibly smootly.  Drop a google doc presentation on the channel, and it could be converted to an image sequence and presented by flipping through images. Not ideal, perhaps, but a good first step. Videos and pictures and 3D objects are also easy, too.

{% newthought "Perhaps most importantly"%}, using social XR this way is inclusive and flexible:  don't have an HMD handy, or don't like using them?  View the hub in a browser window.  Have an AR display, not VR?  The long term goal of social XR is to support all XR devices, so you might see the content and collaborators in your physical room instead of in a VR world.  Someday, perhaps the virtual room could mimic the physical space that part of the group is in.

At the end of the day, social XR has the potential to provide a smooth way to have a social experience with a group of people that builds on norms from the physical world, hopefully in a way that's more engaging and effective than video conferencing or audio-only chat. The key to making it useful, however, is having spaces that make these social experiences smoother and more effective than other approaches;  tightly integrating with the tools being used to get work done will be one key to this effectiveness, and web-based social XR is far more likely to accomplish that than closed monolithic systems.

Just ask anyone who tried to hold a meeting in Second Life back in it's heyday.
