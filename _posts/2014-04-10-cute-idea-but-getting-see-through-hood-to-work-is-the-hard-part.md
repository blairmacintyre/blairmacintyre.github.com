---
title: Cute idea, but getting &#8216;See-Through&#8217; hood to &#8216;work&#8217;
  is the hard part
date: 2014-04-10 03:17:59 -04:00
permalink: "/2014/04/10/cute-idea-but-getting-see-through-hood-to-work-is-the-hard-part/"
categories:
- commercial
tags:
- demos
- car
- Land Rover
- see-through hood
id: 666
author: blair
layout: post
guid: http://www.blairmacintyre.me/?p=666
---

{% capture ca-cite %}{% reference hill2011virtual  %}{% endcapture %}
I saw a nice concept over on Mashable in this article, [Land Rover's 'See-Through' Hood Shows the Road Under Your Wheels](http://mashable.com/2014/04/09/land-rovers-see-through-hood-shows-the-road-under-your-wheels/).  Here's the video (which is the key part):

{% youtubes 1OlqditIsoM %}

As with most of these concept mock-ups (yes, this is a mockup), the slickness of the video hides some serious technical challenges.  In particular, since the center-of-projection of the camera is no where near the driver's eye, the video of the road would be _very_ difficult to blend so seamlessly with the drivers view of the road.

We actually explored a very similar problem a number of years back, which we called _virtual transparency_ (we presented this as a poster at ISMAR 2011]{% sidenotevar "ismar2011" ca-cite %}).  The idea in our system was to use a wide field-of-view (fisheye, in our case) camera on the back of a tablet or phone, and then track the user's head relative to the phone.  By tracking the head, we can extract a sub-rectangle of the image to display that approximates what the user would be seeing if they were looking through the screen of the device.  The effect worked pretty well.  If you moved the device left or right, the subregion of the video moved in the opposite direction.  Move closer to the device and a wider view is seen; a smaller part of the video is seen if you move your head away from the phone.  And if the user tilted the phone left or right, we'd show an appropriately distorted view.  Here's a video of the system in action:

{% youtubes vj2CvgeZD3M %}

The problem is that the projection lines from the user's eye don't align with the projection lines from the camera, as shown in Figure 2 from our ISMAR 2011 poster:

{% maincolumn assets/uploads/2014/04/schematic2.png "A simple illustration of how the subfield of the video is selected from the wide FOV video stream for display on the screen." %}

The manifestation of this issue can be seen in the edges of the view volumes.  The line marked "desired view" has the edges of the user's view lines (through the sides of the display) intersecting with the lines from the camera _at a specific distance from the camera_. Therefore, the part of the camera video we select would change if we moved that desired view line further away from, or closer to, the display.  In our case, we used the depth of the target we were tracking and augmenting to provide an estimate of the depth, which worked well enough for the demo system.  But, any 3D objects in the view could be weirdly distorted.

In this see-through hood example, you would need to know the full 3D structure of the scene (as seen by the video camera of the car) in order to remap the video to show correctly from the drivers point of view.  Not technically insurmountable, but difficult.

Regardless of the difficulty, it is a fun video, and I'd love to have this system on my car.
