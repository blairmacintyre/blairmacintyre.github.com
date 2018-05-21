---
title: 'The Scientific Paper isn''t Dead, Sorry'
date: '2018-05-21T06:53:19-04:00'
author: blair
layout: post
categories:
  - education
  - research
tags:
  - paper
  - computational notebooks
permalink: 2018/05/21/scientific-paper
---
I ran across an ambitiously titled article in the Atlantic, "[The Scientific Paper Is Obsolete (Here’s what’s next)](https://www.theatlantic.com/science/archive/2018/04/the-scientific-paper-is-obsolete/556676/)". The title felt a bit like click-bait, but as an academic, that kind of bold pronouncement is hard to resist.

The **TL;DR** version of the paper is this: *Static papers will be replaced by papers with interactive figures.*

That's pretty much the gist of it. There's not a lot new offered here, and certainly no insight as to "what's next."  The article (and quoted experts) focus on technology, but ignore the practical obstacles to widespread adoption of interactive articles: serious issues like "how do authors avoide misleading readers?" and "how can simulations and interactive figures be reviewed and vetted?"

The article is worth reading, though, and he does a good job highlighting the work of the folks pushing hard on the vision and tools of interactive documents, from [Bret Victor](http://worrydream.com/) to Stephen Wolfram to [Fernando Perez](https://bids.berkeley.edu/people/fernando-perez). He neatly summarizes the approaches to live interactive documents, giving some compelling examples.  It's clear the technology is getting better, and those lucky enough to collaborate with folks like Victor can create compelling, one-off examples.{% marginnote "sticky" "The vision is much older than the article implies, however. Surely the [Dynabook](https://en.wikipedia.org/wiki/Dynabook) painted this vision;  as did the [Memex](https://en.wikipedia.org/wiki/Memex) to a certain extent.  It's been the basis of [Scifi novels](https://en.wikipedia.org/wiki/The_Diamond_Age) as well. The interactive vs dynamic media discussion isn't new. The author touches on the sticky issue of how these interactive papers could be practically shared and reliably archived, but glosses over any solutions.  Web and computing technology changes rapidly, and companies have shown little taste for backwards compatibility.  As all those old documents on my computer remind me, sitting there with no easy way for me to open them. That said, it's possible to imagine solutions emerging, perhaps expanding the scope of formats like PDF to include interactive elements that are sufficiently powerful; you can already [embed movies](https://www.creativebloq.com/how-to/how-to-add-video-to-interactive-pdfs) in PDF, why not other things?"%}  

{% newthought "But let's step" %} back and remember why we still publish papers. At the center of the publication process is providing the information needed to advance science; verifiable nuggets of information that have been reviewed, vetted and then shared. That's it. The author says that up front, when talking about how journals started.

> The scientific paper—the actual form of it—was one of the enabling inventions of modernity. Before it was developed in the 1600s, results were communicated privately in letters, ephemerally in lectures, or all at once in books. There was no public forum for incremental advances. By making room for reports of single experiments or minor technical advances, journals made the chaos of science accretive. Scientists from that point forward became like the social insects: They made their progress steadily, as a buzzing mass.

There is an implication here, though.  For something to be reviewed and vetted, it has to be _possible for reasonable experts to review and vet it_.  Interactive content raises fundamental questions for the reviewing process. For example, how can reviewers know that they have explored all the possible configurations of a figure, to give their stamp of approval to what is being communicated?  

Worse, do we expect reviewers to debug interactive papers now?  Consider the infamous [excel bug](https://www.theverge.com/2013/4/17/4234136/excel-calculation-error-infamous-economic-study) that led to a faulty economics paper that, in turn, was used to justify the disastrous austerity policies the have crippled some countries in recent decades (not to mention inspired Randian policies by politicians like Paul Ryan).  What if every figure in every scientific paper might contain bugs leading to misleading results?  Finding errors in printed text and figures is hard enough;  finding it in hidden code underlying the visible results would be intractable. It's naive to assume this will not happen. 

{% newthought "Reviewing" %} interactive documents is just the tip of the iceberg, and a minor problem compared with the effect of simulation on readers. The implicit argument in this article is that somehow interactivity is "better" and gives us more insight.{% marginnote "viz" "Can we really expect scientists to both master their disciplines and become masters at creating compelling interactive visualizations? Will science become the domain of polymaths capable of doing groundbreaking research and creating effective and compelling simulations and interactive figures?" %}  But, [simulations are simplifications](http://www.fogbanking.com/the-simulation-gap/), and will be significantly more insidious when it comes to convincing readers of the results. Creating interactive content that gives insight, rather than misleading or confusing, is not a trivial task.

Bogost writes convincingly about [procedural rhetoric and the need for procedural literacy](http://bogost.com/books/unit_operations/); but, in a world where people aren't educated about basic facts, and can't tell the difference between a news site and one pushing propaganda and lies, interactive content would need to be created with great care and skill if it is not going to be misleading. The above excel bug would probably have been much more compelling if the figures had sliders to change the inputs to the simulations, or if they'd been illustrated with [mesmerizing dynamic graphs](https://medium.com/@EvanSinar/use-animation-to-supercharge-data-visualization-cd905a882ad4). 
{% marginnote "lies" "And this doesn't even consider authors who might be *intentionally* misleading the reader.  In many ways, interactive figures can be amazing, but can also be an horrifying combination of \"a picture is worth a thousand words\" and \"lies, damn lies, and statistics\"." %}

The author makes clear his stance:  the only reason we have static papers is because there is no incentive for academics to jump on board, and if only they were required to do so, we'd move into a brave new world of interactive exposition in science:

> Until journals require scientists to submit notebooks, and until sharing your work and your data becomes the way to earn prestige, or funding, people will likely just keep doing what they’re doing.

Ironically, I'm a big fan of embedding interactive content in documents; the ability of anyone to create and share whatever they want is one of the things that draws me to the web.  But this sort of simplistic article doesn't help.
