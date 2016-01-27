---
id: 136
title: MineCraft + 3D Printer == Ultimate 3D Sandbox for Kids
date: 2013-04-02T21:54:15+00:00
author: blair
layout: post
guid: http://www.blairmacintyre.com/?p=136
permalink: /2013/04/02/the-ultimate-3d-sandbox-for-kids/
dsq_thread_id:
  - 4525109338
---
I love Minecraft.  And if your kids are like my kids, they love Minecraft, too.  We&#8217;ve had a server running in our house for some time, but things got exciting for me when I discovered [www.printcraft.org](http://www.printcraft.org) late last year.  You see, Santa (in his infinite wisdom) had just brought us a Makerbot [Dual-head Replicator](http://store.makerbot.com/replicator.html), but I was at a loss on how to easily get my kids (aged 7 and 10) creating their own 3D objects, not just skimming [thingiverse.com](http://thingiverse.com) for &#8220;cool&#8221; things to print.

Unfortunately, printcraft was a dedicated server, and I really wanted to let my kids go nuts on our own server;  after all, why not?  Between my wife and I, we have more CS degrees than any house should, so why couldn&#8217;t I get something rigged up?

I&#8217;m not going to give detailed step-by-step instructions here; I may do that someday, but the process is still a little jury rigged for public consumption.  But, here&#8217;s the gist of what I did.

First, I had to take the plunge and upgrade our server to support mods.  In particular, I&#8217;m currently running the craftbukkit-1.5.1-R0.1-20130330.075504-28.jar as my server, with the WorldEdit v5.5.5 plugin (I&#8217;m also running PermissionsBukkit-2.0 for permission control, Multiverse-Core-2.5 for multiple worlds in one server and Multiverse-SignPortals-2.5 to let me create signs that can be clicked to teleport).  The key feature of WorldEdit is that it lets you run **javascript** scripts from within Minecraft, and those scripts let you have full access to the server data-structures.

Fortunately, Paul Harter (the creator of printcraft) had posted his [core script on github](https://gist.github.com/paulharter/4001539) and while it wasn&#8217;t a load-and-go kind of script, it served as a great starting point for rolling my own server.  For anyone who cares, it looks like you&#8217;d expect:

<img class="size-medium wp-image-139 aligncenter" alt="3dprint-code" src="http://www.blairmacintyre.com/wp-content/uploads/2013/04/3dprint-code-300x274.jpg" width="300" height="274" srcset="http://blairmacintyre.me/wp-content/uploads/2013/04/3dprint-code-300x274.jpg 300w, http://blairmacintyre.me/wp-content/uploads/2013/04/3dprint-code.jpg 685w" sizes="(max-width: 300px) 100vw, 300px" />

While Paul&#8217;s original script is based on the idea of printing out everything within a predefined region, I opted to use the ability of WorldEdit to marker regions in the world.  So, my script assumes you&#8217;ve set a region to print, and then it traverses through that region, collecting up the blocks it finds.  It&#8217;s currently pretty limited in that it only supports square blocks (no ladders, chests, stairs, slabs, etc).   I divided the main blocks into two sets, and write out two scripts, one for each of the two kinds of blocks.

This is the second key thing Paul did:  he didn&#8217;t bother to create the STL file directly, but rather wrote out [OpenSCAD](http://www.openscad.org) programs.  OpenSCAD is a &#8220;programmers 3D modeler&#8221;, in that it lets you write programs that create models using constructive solid geometry.  So, printcraft creates a list of cubes and then merges them into a model;  OpenSCAD takes care of turning that union of those cubes into a proper model, which you can then save as STL.

So, the process is simple.  First, my kids create something they want printed in Minecraft.  Here&#8217;s a model my son made (the stone and dirt will be written out as separate models):

<img class="size-medium wp-image-140 aligncenter" alt="3dprint-minecraft-model" src="http://www.blairmacintyre.com/wp-content/uploads/2013/04/3dprint-minecraft-model-300x159.jpg" width="300" height="159" />

Next, I run the script I wrote, derived from Paul&#8217;s printcraft script, generating two OpenSCAD programs.  I then load each into OpenSCAD and generate STL files from them.  Here&#8217;s one:

[<img class="size-medium wp-image-137 aligncenter" alt="3dprint-openscad" src="http://www.blairmacintyre.com/wp-content/uploads/2013/04/3dprint-openscad-300x190.jpg" width="300" height="190" />](http://www.blairmacintyre.com/wp-content/uploads/2013/04/3dprint-openscad.jpg)

Finally, I load both files into Makerware, size them as desired and select which is printed with which extruder:

[<img class="size-medium wp-image-138 aligncenter" alt="3dprint-makerware" src="http://www.blairmacintyre.com/wp-content/uploads/2013/04/3dprint-makerware-300x231.jpg" width="300" height="231" srcset="http://blairmacintyre.me/wp-content/uploads/2013/04/3dprint-makerware-300x231.jpg 300w, http://blairmacintyre.me/wp-content/uploads/2013/04/3dprint-makerware.jpg 1024w" sizes="(max-width: 300px) 100vw, 300px" />](http://www.blairmacintyre.com/wp-content/uploads/2013/04/3dprint-makerware.jpg)

And then, we wait for the Replicator to finish printing (a little longer than any of us would like)!

<p style="text-align: center;">
  <a href="http://www.blairmacintyre.com/wp-content/uploads/2013/04/IMG_3085.jpg"><img class="alignnone size-medium wp-image-141" alt="IMG_3085" src="http://www.blairmacintyre.com/wp-content/uploads/2013/04/IMG_3085-225x300.jpg" width="225" height="300" srcset="http://blairmacintyre.me/wp-content/uploads/2013/04/IMG_3085-225x300.jpg 225w, http://blairmacintyre.me/wp-content/uploads/2013/04/IMG_3085-768x1024.jpg 768w" sizes="(max-width: 225px) 100vw, 225px" /></a>
</p>

<p style="text-align: left;">
  I won&#8217;t pretend this was a simple, smooth process, but it was fun!  And, most importantly, now I can print whatever my kids care to think up, without them having to learn a 3D modeling program.  I suspect that they will soon want to learn something more powerful, but for now I&#8217;m looking forward to seeing what they come up with.
</p>

&nbsp;