---
id: 666
title: 'Cute idea, but getting &#8216;See-Through&#8217; hood to &#8216;work&#8217; is the hard part'
date: 2014-04-10T07:17:59+00:00
author: blair
layout: post
guid: http://www.blairmacintyre.me/?p=666
permalink: /2014/04/10/cute-idea-but-getting-see-through-hood-to-work-is-the-hard-part/
wpzoom_portfolio_overview:
  - 
wpzoom_portfolio_client:
  - 
wpzoom_portfolio_services:
  - 
wpzoom_post_template:
  - 
wpzoom_slideshow_url:
  - 
---
I saw a nice concept over on Mashable in this article, [Land Rover&#8217;s &#8216;See-Through&#8217; Hood Shows the Road Under Your Wheels](http://mashable.com/2014/04/09/land-rovers-see-through-hood-shows-the-road-under-your-wheels/).  Here&#8217;s the video (which is the key part):

<span class="vvqbox vvqyoutube" style="width:425px;height:344px;"><span id="vvq-666-youtube-1"><a href="http://www.youtube.com/watch?v=1OlqditIsoM"><img src="http://img.youtube.com/vi/1OlqditIsoM/0.jpg" alt="YouTube Preview Image" /></a></span></span> 

As with most of these concept mock-ups (yes, this is a mockup), the slickness of the video hides some serious technical challenges.  In particular, since the center-of-projection of the camera is no where near the driver&#8217;s eye, the video of the road would be _very_ difficult to blend so seamlessly with the drivers view of the road.

We actually explored a very similar problem a number of years back, which we called _virtual transparency_ (we presented this as a [poster at ISMAR 2011](http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=6162897)).  The idea in our system was to use a wide field-of-view (fisheye, in our case) camera on the back of a tablet or phone, and then track the user&#8217;s head relative to the phone.  By tracking the head, we can extract a sub-rectangle of the image to display that approximates what the user would be seeing if they were looking through the screen of the device.  The effect worked pretty well.  If you moved the device left or right, the subregion of the video moved in the opposite direction.  Move closer to the device and a wider view is seen; a smaller part of the video is seen if you move your head away from the phone.  And if the user tilted the phone left or right, we&#8217;d show an appropriately distorted view.  Here&#8217;s a video of the system in action:

<span class="vvqbox vvqyoutube" style="width:425px;height:344px;"><span id="vvq-666-youtube-2"><a href="http://www.youtube.com/watch?v=vj2CvgeZD3M"><img src="http://img.youtube.com/vi/vj2CvgeZD3M/0.jpg" alt="YouTube Preview Image" /></a></span></span> 

The problem is that the projection lines from the user&#8217;s eye don&#8217;t align with the projection lines from the camera, as shown in Figure 2 from our ISMAR 2011 poster:

<div id="attachment_672" style="width: 388px" class="wp-caption aligncenter">
  <a href="http://www.blairmacintyre.me/wp-content/uploads/2014/04/schematic2.png"><img class=" wp-image-672" alt="schematic2" src="http://www.blairmacintyre.me/wp-content/uploads/2014/04/schematic2-1024x517.png" width="378" height="191" srcset="http://blairmacintyre.me/wp-content/uploads/2014/04/schematic2-300x151.png 300w, http://blairmacintyre.me/wp-content/uploads/2014/04/schematic2-1024x517.png 1024w, http://blairmacintyre.me/wp-content/uploads/2014/04/schematic2-693x350.png 693w, http://blairmacintyre.me/wp-content/uploads/2014/04/schematic2-630x318.png 630w, http://blairmacintyre.me/wp-content/uploads/2014/04/schematic2.png 1216w" sizes="(max-width: 378px) 100vw, 378px" /></a>
  
  <p class="wp-caption-text">
    A simple illustration of how the subfield of the video is selected from the wide FOV video stream for display on the screen.
  </p>
</div>

<span style="line-height: 1.5em;">The manifestation of this issue can be seen in the edges of the view volumes.  The line marked &#8220;desired view&#8221; has the edges of the user&#8217;s view lines (through the sides of the display) intersecting with the lines from the camera <em>at a specific distance from the camera.  </em>Therefore, the part of the camera video we select would change if we moved that desired view line further away from, or closer to, the display.  In our case, we used the depth of the target we were tracking and augmenting to provide an estimate of the depth, which worked well enough for the demo system.  But, any 3D objects in the view could be weirdly distorted.<em><br /> </em></span>

In this see-through hood example, you would need to know the full 3D structure of the scene (as seen by the video camera of the car) in order to remap the video to show correctly from the drivers point of view.  Not technically insurmountable, but difficult.

Regardless of the difficulty, it is a fun video, and I&#8217;d love to have this system on my car.