---
id: 104
title: 'Has AR taken off?  Is it finally here?'
date: 2009-09-23T20:28:38+00:00
author: blair
layout: post
guid: http://www.augmentedenvironments.org/blair/?p=104
permalink: /2009/09/23/has-ar-taken-off/
categories:
- commercial
- personal
tags:
- acrossair
- android
- iphone
- yelp
---

Looking back over the summer, it's almost comical to re-read the sometimes-frenzied excitement at the possibility that the [iPhone will support AR](http://gamesalfresco.com/2009/07/14/has-augmented-reality-arrived-to-the-iphone/) with OS 3.1.  The possibility was exciting, even to those of us not trying to keep a small company afloat;  the idea that there would finally be a platform that would let us get our ideas, games and products to millions of eager customers was an unfamiliar feeling for those of us who have been doing AR for a (very long) while. And for the dozen or so small AR companies, surviving on contract work for movies web sites and eye-candy web advertising, it must have been intoxicating.

Even if we ignore the various bloggers and other hobbyist posting to the web (like I'm doing now), there was a surge of interest in AR from trade magazines (such as [Wired](http://www.wired.com/gadgetlab/2009/09/ar-contact-lens/) and [Computer Weekly](http://www.computerweekly.com/Articles/2009/08/21/237397/smartphones-is-there-anything-they-cant-do.htm)) and the mainstream press (such as [New York Times](http://www.nytimes.com/2009/07/12/business/12proto.html?_r=1&scp=1&sq=blair%20macintyre&st=cse), [CNN](http://www.cnn.com/2008/TECH/07/02/digital.augmentedreality/index.html?iref=newssearch) once, [CNN](http://www.cnn.com/2009/TECH/08/05/augmented.reality.phone.apps/index.html?iref=newssearch) a second time, the [New Scientist](http://www.newscientist.com/article/mg20327267.700-augmented-reality-gets-off-to-a-wobbly-start.html), and others).  And that's just the published articles that I kept track of.  Even sci-fi-author-turned-technical-prophet-turned-AR-fan Bruce Sterling has regularly devoted his [Wired blog](http://www.wired.com/beyond_the_beyond/) to AR topics (and gave a talk at the [Layar "launch"](http://www.vimeo.com/6189763) to boot!).

With so much buzz, it will be interesting to see what happens (both to the AR industry and to the interest from the press), since much of the above-mentioned interest was driven by the overhyped press-releases from the various small companies trying to get a foothold in this nascent industry (as I talked to reporters, the conversations often started with "I saw a press release from XXX, and was wondering ...").  Now that the time is here, now that the promised AR apps can be published in the iTunes store, will they be able to live up to their claims, or will they (and their claims) fade away?

I suspect things will die down for a little while.  At least, I hope things die down for a while, given the paltry offerings coming out.  Until "real" AR is possible, where the video from the camera can be analyzed and used for tracking and other effects, it will be hard to create applications that live up to peoples expectations.  For example, AcrossAir has finally gotten a ream of apps in the iTunes App store, but none are particular exciting (as of today).  As I pointed out to the reports who wrote the news articles above, the sensors in the iPhone (and Android phones) stink if your goal is to accurately overlay graphics on the camera's view of the physical world;  there's no point pretending otherwise.  The camera on the iPhone is pretty bad (in contrast to, say, the cameras and lenses in some Nokia phones), the magnetometer and accelerometers are noisy and imprecise (preventing fast motion or accurate 3D orientation estimation), and the GPS accuracy is pitiful (unless you consider ~25m good).  So, given all this, companies like AcrossAir are perhaps doing the best they can.

But, have they set themselves up for a backlash of bad press?  The most recent of the above articles, in the New Scientist, hints at such a possibility.  Even the title ("Augmented Reality gets off to a wobbly start") is worrying.

I worry about this because there is a beautiful irony in these so-called AR applications:  what excites people about these "informational AR apps" is the idea of seeing information overlaid on the world around them ... the world _they can see nearby_.  But, the quality of the sensors in these phones (especially the GPS) means that none of these applications can align information with anything closer than a few hundreds of meters (or more).  So, when you look for information, anything that relates to what you probably care about (the stuff nearby) is not where it should be, and the stuff that might be vaguely correct refers to things very far away in the physical world.  It is not surprise that the [first Wikitude video](http://www.youtube.com/watch?v=8EA8xlicmT8) overlaid a point of interest on a distant mountain.

Consider the first AR app that was snuck into the iTunes store, the Monocle extension to Yelp.  The app is hamstrung not only by these sensors, but by inaccurate location data in their user-generated review site.  So, when I stepped out in front of my building (the Technology Square Research Building at Georgia Tech, in Atlanta) and looked around, the overlaid information was _completely incorrect_.  Nearby restaurants where off (in some cases shown in the opposite direction from where I was looking), or completely absurd (such as a restaurant blocks away in one direction, showing up beside a nearby one).  Here's a video I took (poor quality because I pointed my junky point and shoot at the iPhone screen) showing what I'm talking about (I realize it will probably only make sense for those in Atlanta).

[quicktime width="480" height="320"]http://www.blairmacintyre.me/wp-content/uploads/2009/09/IMGP0745-3.mov[/quicktime]

Aside from the errors, what does this video show you?  What does Monocle "do" that wouldn't be done better as a tradition 2D Google Map mashup? (Yes, I realize this was just a fun hack they put in there, but the quality and utility questions go beyond this app.) Here's another Yelp screenshot, this time from my kitchen, showing a bunch of restaurants in a nearby neighborhood ... overlaid on my daughters artwork on the kitchen wall.  (We'll ignore that I'm looking about 40 degrees to the left of where I should be to see these labels, even though the iPhone is actually placing me on the street in front of my house, close enough to were I am.)

[![Yelp Monocle:  Augmented Kids Art!](http://www.blairmacintyre.me/wp-content/uploads/2009/09/yelp-kitchen-bad.jpg)](http://www.augmentedenvironments.org/blair/2009/09/23/has-ar-taken-off/yelp-kitchen-bad/)

So as not to just pick on Yelp, let's look at an app that just got released in the iTunes store, just a few days ago, and one who's sole purpose is to do AR:  AcrossAir's PhotosAR.  I donated my 70% of $1.99 to the company to try it out, and the results are .. let's just say "interesting." Again, sitting in my kitchen, I see some images of Piedmont park a few miles away.  The bottom picture isn't actually too bad.

[![PhotosAR from my kitchen](http://www.blairmacintyre.me/wp-content/uploads/2009/09/nearestphoto-silly.jpg)](http://www.augmentedenvironments.org/blair/2009/09/23/has-ar-taken-off/nearestphoto-silly/)

But there's more photos of the park, and so the obvious thing for the app to do is ... stack them?  While this is "cute" in a "gee, there are incomprehensible photos floating above me in 3D, that is so cool" kind of way, it doesn't seem like the best choice.  In this case, you can scroll the stack up and down, too, but this seems like a pretty arbitrary choice.  But it highlights another important issue: how do we organize an overwhelming amount of 3D data in a way that benefits the user?   AR developers would do well to start looking at information visualization, 2D and 3D UI conference papers and textbooks.

[![PhotosAR looking up](http://www.blairmacintyre.me/wp-content/uploads/2009/09/nearestphoto-up.jpg)](http://www.augmentedenvironments.org/blair/2009/09/23/has-ar-taken-off/nearestphoto-up/)

As with the Yelp app, I'm left wondering if, perhaps, just retrieving the photos, grouping them into sets on a 2D Google Map, and letting users browse each of these sets in the built-in coverflow widget might be a much more useful solution?

As various reporters and business folks talked to me over the summer, I tried to emphasize the need to take this exciting new application space with a grain of salt.  The sensors in the phones just aren't up to the task;  the lack of access to the actual video data on the iPhone will largely prevent anything great from happening on it any time soon.   And, to temper expectations, I emphasized then (and continue to emphasize) that this first crop of AR apps will largely be silly little bits of eye candy, designed to (hopefully) generate some income for these companies, along with some press.

In the end, I think that this is probably ok, since many of these companies are serious about AR and will likely use that revenue to stay in business.  Which is what we in the community want, as long as the rush for quick profits doesn't relegate AR to the dustbin of "Big AI" and "Virtual Reality."
