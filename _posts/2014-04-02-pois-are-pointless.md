---
title: POI&#8217;s are Pointless
date: 2014-04-02 17:46:24 -04:00
permalink: "/2014/04/02/pois-are-pointless/"
categories:
- musings
tags:
- POI
id: 647
author: blair
layout: post
guid: http://www.blairmacintyre.me/?p=647
---

I was reminded today about something thats been bugging me for a while:  POIs, as a central data element for AR, are terrible.  (They have their place, of course, but I'm thinking about them as the "main" data type in an AR experience).

POIs (or "Points of Interest") are one of the most common idioms in geo-spatial AR, and it's easy to see why. First, the sorry state of outdoor tracking available to phones and other mobile devices (GPS good to about 10-20 meters in practice, sloppy and low accuracy orientation sensors) makes it impossible to accurately register anything with the world.  So, if all you can do is "floating bubbles of information", those little bits of information about things like buildings, historic sites, and so on start to look pretty good.

Second, POI databases are pretty much the only data source that's available in abundance.  Data sources like [OpenPOI database](http://openpois.net) (which is actually a pretty cool resource, I admit), geocoded Tweets and Flickr photos, and so on provide a ready made source of data to show off whatever AR system you are building.  I've used them in various demo systems, going back to the first outdoor system I worked on (the Touring Machine at Columbia University, back in 1998).

The problem is that while these things are fine for demos, at the end of day the experiences you can create with POIs are generally pointless.  Worse (and this is why I care), the create the impression that AR (as a concept) is worthless.  Here's why:  if all you have is a bit of data with longitude and latitude attached to it (amazingly, most POI databases don't include altitude), it's **almost always** **better to simply display this data on a 2D map**.  And anybody who tries these apps, and isn't taken in by the novelty and fantasies of what AR might be like someday, sees this.   Looking around at a bunch of bobbling labels, not aligned with anything, not integrated with the world, not hidden behind the physical structures of the world, might be cool when you first see it.  After that, it's not.

I know there will be people out there who disagree (many of them probably work for companies that make their livelihood from apps that somehow leverage POIs).  But consider this.  Consumer AR (large-scale outdoor AR) will never be more than a curiosity until until the content can be seamlessly integrated into the world.  The information about that restaurant needs to be blended into the facade of the restaurant, as if it's attached to the surface of the building;  The labels on that famous statue need to be blended into the ground in front of it, or appear to be a collection of signs firmly positioned around it.  Unfortunately, the knowledge needed by and AR system to create these experiences is not contained in the POI databases that are out there, and there is no reason to believe it will ever be if folks keep happily using these databases to create mediocre experiences.
