---
title: A nice summary of the state of AR &#8230;
date: 2010-01-05 14:06:34 -05:00
permalink: "/2010/01/05/jarrells-state-of-the-art/"
categories:
- musings
id: 421
author: blair
layout: post
guid: http://www.augmentedenvironments.org/blair/?p=136
---

For those of you interested in AR, [Jarrell Pair's recent post](http://laboratory4.com/2010/01/the-reality-of-augmented-reality/) on the state of AR is a pretty good summary.

In general, I agree with Jarrell, although I am probably a bit more optimistic that he appears to be;  for those who've read my previous posts, that may seem surprising.  I think his comments in the first few sections ("Augmented Reality Glasses are not Viable in the Near Term", "GPS and Compass is not Enough", "Sensor Fusion is the Answer") are pretty much dead on;  if anything, I'd say he doesn't emphasize enough just how impoverished an experience "GPS + Compass" limits designers to!  In both our work at Georgia Tech, and in my company, we've experimented with what you can do with the GPS+Compass combo, and it's hard to come up with non-trivial, compelling experiences.

The problem with the GPS+Compass is that, on any affordable device, these sensors are of such poor quality that they are almost useless for AR.  Because the position accuracy, in particular, is so poor, you really can't "put stuff in 3D" ... you end up treating the world as a sphere around you on which you paint content that lies in a certain direction (which is what all the so-called "AR browsers" are doing;  putting icons up for content that lies in roughly a certain direction).  By explicitly acknowledging this limitation, that the AR world is really just a sphere around you, we designed and released a small application, SantaVision, on the iPhone just before Christmas;  in this application, you put 2D stickers on a virtual sphere around you, ignoring the full 3D nature of the world and letting you decorate it from one location in space.  The application is fun, but the limitations of the compass are fairly obvious.

As Jarrell points out, sensor fusion (combining these sensors with computer vision), is clearly the answer:  this has been known for a while, highlighted by his reference to Ron Azuma's PhD work in the late 90's!  (Ron is now doing AR work at Nokia's Hollywood Lab, btw).

Of the 5 platforms he points out, I'd say the only two important ones are smartphones and tablets;  the others are more practical now, because of the greater computing power they bring and because the constraints of their deployment make them easier to target.  However, handheld devices offer a unique first-person perspective that I believe is essential to leveraging the full power of AR (this perspective is also offered by HMDs):  by coupling the display with the camera (in video-see-through applications such as these) the technology creates the illusion that the display is being looked through at the world.  This coupling facilitates a direct, natural interaction metaphor, that cannot be achieved with the other technologies mentioned.

Overall, I think his final point is key, which I would paraphrase as follows:  the success of AR is tied to creating usable, useful, fun or entertaining applications and experiences.  Novelty and gimmick's will wear off soon, but fun experiences that take advantage of the unique nature of the technology (and thus can't be achieved without it) will earn AR a place as a viable and lasting approach to as a human-computer interface.
