---
title: The AR Cloud will not be One Big Crowd-Sourced Map
date: 2019-02-22 11:39:00 -05:00
categories:
- musings
- commercial
tags:
- arcloud
- crowdsourced
- permissions
- privacy
---

[Trevor Smith](https://trevor.smith.name/) started twitter thread on architectural alternatives to "One Big Map" for the so-called "AR Cloud", it's an interesting read (although getting all the replies might require some digging, I miss storify): 

{% twitter https://twitter.com/TrevorFSmith/status/1096870939504111616 %}

There's a lot going on in this thread.  As with all discussions of the AR cloud, there's a segment of folks who can't get past "the AR cloud requires we scoop up data and build big maps."  I think the point of Trevor poking at this is to counter (or at least stir up discussion) of this.  

{% newthought "There" %} are some fundamental things I disagree with about the premise that the AR Cloud will require automated data collection. Certainly, automated data collection is the most straightforward approach. And it (conceptually) allows one company to control the persistence and relocalization workflow.  But these arguments ignore the real landscape we'll live in (where the underlying platforms will solve at least part of this problem), and mostly cater to the desires of small startups and enthusiasts.

There are other fundamental issues I have, especially as they relate to personal privacy.  For example, I do not believe that any representation of the features/structure in a space is inherently private and can't be used to create a human-readable version of the map:  if it can be used for relocalization in the space, then some Deep Learning (or other ML) system could conceivably extract structure from it, especially as the maps are updated over time.

{% newthought "There" %} are two very different arguments I've had presented to me in response to the privacy concerns I have with automated crowd-sourced approaches.  

One is the "people can already take pictures and post them to social media without your permission, so this is no different."  This argument is absurd. Taking pictures is an intentional act; taking a picture and posting it somewhere is an explicit activity, and while different people and groups have different social norms about taking and posting pictures in other people's spaces, these norms exist and mesh well with the intentionality of the act. Pictures are also discrete, and if I don't like a picture a friend posts on social media, I can ask them to remove it. 

None of this is analogous to continuous crowdsourcing of world structure.  The process is hidden, continuous, and automatic.  If you want to cling to the picture-taking analogy, this is more like publicly live-streaming (and storing) video from a head-worn camera (anyone remember the reaction to ["Glassholes"](https://www.urbandictionary.com/define.php?term=Glasshole) filming what they see?) then it is to posting pictures.  

Worse, the whole point of collecting this data is that it will be merged into a global maps.  Once its integrated, and additional data is merged on top, _getting it out will be impossible_. It's out there.

The second argument is that we could control who can post information about spaces, limiting it to authorized people.  For example, only property owners can post or give permission to post. But this idea is impractical, invasive, and (frankly) naive.  

Consider the simple example of a family living in an apartment.  Who has permission to contribute to the map?  The person who owns the apartment, or the family living there?  Can the owner of the building turn on permissions without the concept of renters?  What about when one family moves out and another in? What about members of the family.  Do the teenage children automatically have permission?  Can they authorize their friends, perhaps because they want (need) to have an AR experience together in the house?  

Finally, how do we even detect where we are to a level of detail needed to query the hypothetical permission system unless we _already have precise location_?  Without precise localization, we can't differentiate between hallways and being "just inside the door", or between apartments next to each other or above or below each other on separate floors.

Worse, all of this presupposes that anyone using AR is willing to associate themselves with a public, autheticated, permanent ID (conflicting with the many good reasons for desiring anonymity when dealing with technology), and to be willing to maintain and use these IDs for purposes such as these.  Security professional are well aware that most users click through permission request without necessarily considering the implications of them; people share and reuse passwords;  why would we assume people will deal with non-trivial "maintenance" tasks such as managing "virtual access" to their spaces?

## Embrace Realistic, Complex Solutions
My preferred way of thinking about global localization is to combine a few elements:
- _baseline global localization_ using controlled, curated and managed data that is restricted to public spaces. Maps (or other base data) are explicitly managed, to ensure they only exist in public space (e.g., streets) or spaces where the verified owners have given permission to be included (e.g., malls, airports, museums). 
- _private data clouds_ created on a per device, or per user, or even per organization, basis. These clouds can be linked to the global maps _for that user_ when they move between public and private spaces (e.g., I could share my cloud data between all my devices like I share my Apple Messages or Firefox bookmarks).
- _the ability for people to share local maps_ with others on-demand (with or without linking them to the full map) to facilitate local co-located experiences
 
Most of the so-called AR Cloud mapping solutions being developed will work quite well to create private data clouds for individuals. When my collection of local maps is linked to the global map, I can localize globally within my map;  I can know it's geoposition and geoorientation precisely.  
 
{% newthought "Hololens and ML1"%} (the two major AR HMD's right now) both create and save representations of spaces they are used in; ARKit allows maps to be shared and re-used;  Google's Cloud Anchors support local maps.   Of of these create spaces without leveraging global localization, for now.  But it's pretty easy to see that if the underlying platform could globally precisely localize itself (globally) while in a public space, it would be relatively easy to set up a relationship between global and local coordinate frames, and thus know the precise global pose of the device when _inside a map that's been global localized_.

Clearly, this approach isn't as sexy as "The One True Map", and has some limitations right now, when most AR is smart-phone-based and (thus) ephemeral. On a phone, I'm unlikely to be "doing AR continuously" as I walk from the street, through a building and up to my office, so the private AR map in my office or lab is unlikely to be linked to the global map.  

But this is a near term problem, and can be solved.

{% newthought "I feel strongly"%} about avoiding crowd-sourcing global maps, because this tension between crowd-sourced and curated global maps is at the heart of the very real privacy concerns with the AR Cloud. 

Consider Google's [Global Localization that I talked about previously](/2019/02/13/global-localization), which takes the approach of using private, curated data (Google's Streetview images) for global localization.  Collecting and maintaining such a database of imagery is a massive undertaking, and that are valid concerns about relying on proprietary data for such a fundamental capability.  Of course, the same concerns exist for GPS, which is run by a few governments around the world, yet so much of our mobile computing world relies on it.

Relying on such an curated approach has some very nice properties. The base data (geolocated images) is visible and human understandable. It's relatively obvious what data is used, and existing processes (and policies and social norms) are in place to deal with conflicts over content in the images.  Rather than throwing up our hands on privacy, saying "no small company can compete, so we need to crowdsource our own private data in an uncontrolled, careless and haphazard manner", and storing this data in private, opaque, non-decomposable, formats, perhaps we should step back and ask how we could follow the traditions of the open web to accomplish something similar?

One direction might be to build on [OpenStreetMap](https://www.openstreetmap.org)'s nascent effort to add panoramic images to its street data. If we take the long view, it should be possible to enhance something like OSM to include the data needed for global localization.  The social and curatorial properties of OSM are even better than Google's StreetView.  New data can be added, old data deleted or edited, by anyone who cares to do it, allowing problems to be fixed on the ground by motivated parties.

{% newthought "The time is now" %} to decide what kind of future we want.  Do we want to contribute to a future as imagined in any number of dystopea novels, where live 3D maps of the world exist, are continously updated, and abused for surveilance by goverments and companies?  Do we want a future with no physical privacy, where global "mirror worlds" exist that expose all aspects of our lives?  These questions may sound paranoid, but goverments and companies have shown little hestitation to (ab)use technology for their own gain, at the expense of the public, before. And once this genie is out of the bottle, it will be impossible to put it back in.  
