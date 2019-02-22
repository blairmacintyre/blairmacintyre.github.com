---
title: More Information of Google's Cloud Anchors, and More Questions
date: 2018-05-13 09:06:04 -04:00
permalink: 2018/05/13/more-arcloud-questions
categories:
- privacy
tags:
- google
- cloud anchors
- arcloud
- arcore
- arkit
author: blair
layout: post
---

In a [post earlier this week](2018/05/08/arcore-cloud-anchors) I outlined some concerns I had about Google's Cloud Anchors, specifically about what kind of data they were collecting, and what they were doing with it.

[Tim Field](https://twitter.com/nobbis) pointed me at [more information on how cloud anchors work](https://developers.google.com/ar/develop/ios/overview#hosting_anchors){% marginnote "me" "I'm not sure if I just I missed this page, or if it wasn't there when I first looked."%}, which fills in some gaps but still leaves questions. The page confirms that they are uploading relatively dense visual mapping data and converting it to a common data format:

> When you host an anchor, ARCore sends relevant visual mapping data from a user's environment to Google servers. 

> Once this data is uploaded, it is processed into a sparse point map, similar to an ARCore point cloud.

And the page also answers some of my questions about what data about the space is sent back to clients resolving the anchors (none), and that the raw data is only kept for a short amount of time.

In a section on "Data Storage and access limitations", we see:

> *    Raw visual mapping data uploaded to the cloud when hosting an anchor is discarded after seven days.
> *  Anchors are resolved on the server side against the stored sparse point map.
> > *       The sparse point map can be used for cloud anchor resolution requests for one day after it is generated.
> > *        Previously uploaded mapping data is never sent to a user's device.
> *    It is not possible to determine a user's geographic location or to reconstruct any images or the user's physical environment from the sparse point map.
> *    Visual feature descriptions from a request to resolve an anchor are never stored.

On the surface, this looks promising, but the devil is in the details, and with companies like Google (who make their living aggregating and processing data), it's not clear that these guarantees are really as rosy as they might appear.  Tim raised some concerns in a few tweets

{% twitter https://twitter.com/nobbis/status/994649456128811008 %}

{% twitter https://twitter.com/nobbis/status/994692740737839105 %}

{% marginnote "privacy" "If Google meant these as privacy guarantees, they would most certainly be presented that way;  as a company, Google is quite aware of privacy (as their [GDPR-related emails](2018/05/12/gdpr-privacy-notices) over the past week show)." %}
Beyond that, there is a more fundamental question here:  the limitations expressed above are **not** presented as guarantees, but _limitations developers should be aware of_. And, that means they could change at any time. 

Accepting the way data is used in the current implementation as anything more may come back to bite developers at any time in the future:  once there is enough critical mass around this service (assuming it gets adopted), there's no reason Google couldn't change how the data is used.

{% newthought "So, before I'm willing" %} to use this service, I'd like to see Google make some more explicite _guarantees_ about how the data will be used, not just now but in the future.  They could easily do this.  Will they?


