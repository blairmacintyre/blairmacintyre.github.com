---
title: The AR Cloud will not be One Big Crowd-Sourced Map
date: 2019-02-22 11:39:00 -05:00
categories:
- musings
- commercial
tags:
- ar cloud
- crowdsourced
- permissions
- privacy
---

My friend [Trevor](https://trevor.smith.name/) started twitter thread on architectural alternatives to "One Big Map" for the so-called "AR Cloud", it's an interesting read:

{% twitter https://twitter.com/TrevorFSmith/status/1096870939504111616 %}

There's a lot going on in this thread.  As with all discussions of the AR cloud, there's a segment of folks who can't get past "the AR cloud requires we scoop up data and build big maps."  I think the point of Trevor poking at this is to counter (or at least stir up discussion) of this.  

There are some fundamental things I disagree with many folks advocating for automated data collection. For example, I do not believe that any representation of the features/structure in a space is inherently private:  if it can be used for relocalization in the space, then some ML/DL system could conceivably extract structure from it, especially as it's updated over time.

There are two very different arguments presented in response to privacy concerns with these approaches.  

One is the "people can take pictures and post them to social media without your permission, so this is no different."  This is, frankly, absurd. Taking pictures is an intentional act; taking an posting a picture is a conscious activity, and while different people and groups have different social norms about taking and posting pictures in other people's spaces, these norms exist and mesh well with the intentionality of the act. Pictures are also discrete, and if I don't like a picture a friend posts on social media, I can ask them to remove it. 

None of this is analogous to crowdsourced world structure.  The process is hidden, continuous, and automatic.  It's more like live-streaming a head-worn camera (anyone remember the reaction to "Glassholes"?) then it is to posting pictures.  But, worse, the whole point of collecting this data is that it will be merged into the global maps.  Once its integrated, and additional data is merged on top, getting it out will be impossible. It's out there.

The second argument is that we could control who can post information about spaces, limiting it to authorized people.  For example, only property owners can post or give permission to post. But this is completely impractical, and (frankly) naive.  Consider the simple example of a family living in an apartment.  Who has permission?  The person who owns the apartment, or the family living there?  Can the owner of the building turn on permissions without the permission of renters?  What about when one family moves out and another in? What about members of the family.  Do the teenage children automatically have permission?  Can they authorize their friends, perhaps because they want (need) to have an AR experience together in the house?  Finally, how do we even detect where we are to a level of detail needed to query the hypothetical permission system until we already have precise location?  Without precise localization, we can't differentiate between hallways and being "just inside the door", or between apartments next to each other or above or below each other on separate floors.

My preferred way of thinking about global localization is to combine a few elements:
- global localization using controlled, curated and managed data that is restricted to public spaces. Maps (or other base data) are explicitly managed, to ensure they only exist in public space (e.g., streets) or spaces where the verified owners have given permission to be included (e.g., malls, airports, museums). 
- private data clouds created on a per device, or per user, basis, that are linked to the global maps _for that user_ when they move between public and private spaces (e.g., I could share my cloud data between all my devices like I share my Apple Messages or Firefox bookmarks).
- the ability for people to share local maps with others on-demand (with or without linking them to the full map) to facilitate local co-located experiences

When my collection of local maps is linked to the global map, I can localize globally within my map;  I can know it's geoposition and geoorientation precisely.  

Hololens and ML1 (the two major AR HMD's right now) both create and save representations of spaces they are used in;  both of them create spaces without global localization right now.  But it's pretty easy to see that if the device could globally localize myself while in a public space, it would be relatively easy to set up the relationship between global and local coordinate frames, and thus know the precise global pose of the device when inside a map that's been global localized.

Clearly, this approach isn't as sexy as "The One True Map", and has some limitations right now, when most AR is smart-phone-based and (thus) ephemeral. I'm unlikely to be "doing AR continuously" as I walk from the street in front of my office, through the building and up to my office, if my AR device is my phone, so the private AR map in my office or lab is unlikely to be linked to the global map.  

But this is a near term problem, and can be solved.

I feel strongly about avoiding crowd-sourcing global maps, because this tension between crowd-sourced and curated global maps is at the heart of the very real privacy concerns with the AR Cloud. 

Consider Google's [Global Localization that I talked about previous](), which takes the approach of using private, curated data (Google's Streetview images) for global localization.  Collecting and maintaining such a database of imagery is a massive undertaking, and that are valid concerns about relying on proprietary data for such a fundamental capability.  Of course, the same concerns exist for GPS, which is run by a few governments around the world.  

Relying on such an approach has some very nice properties. The base data (geolocated images) is visible and human understandable. It's relatively obvious what data is used and existing processes (and policies and social norms) are in place to deal with conflicts over content in the images.  Rather than throwing up our hands on privacy, saying "no small company can compete, so we need to crowdsource our own private data in an uncontrolled, careless and haphazard manner", and storing this data in private, opaque, non-decomposable, formats, perhaps we should step back and ask how the open web could accomplish something similar?

Consider [OpenStreetMap]()'s nascent effort to add panoramic images to its street data. If we take the long view, it should be possible to enhance something like OSM to include the data needed for global localization.  The properties of OSM are even better than Google's StreetView.  New data can be added, old data deleted or edited, by anyone who cares to do it, allowing problems to be fixed on the ground by motivated parties.  


