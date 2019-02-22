---
title: Variant 4 of the Meltdown-Spectre Processor Flaws Revealed
date: 2018-05-22 09:53:31 -04:00
permalink: 2018/05/22/variant-4
categories:
- commercial
- privacy
tags:
- spectre
- meltdown
- intel
author: blair
layout: post
---

And the CPU bug revelations continue to be found: a fourth variation of the Meltdown-Spectre security flaws has been reveal, and is referred to as _speculative store bypass_. 

Essentially, if the CPU speculatively fetches some memory into the cache as part of trying to execute an out-of-order instruction, and then decides to abandon it because the memory might be wrong (i.e., due to a pending write), the old memory values are left in the cache, and can possibly be read.

{% marginnote "snark" "I like The Register's writing style, laced with well-deserved British snark.  Such as their reference to the [original revelation together with this as a collection of \"design blunders\"](https://www.theregister.co.uk/2018/01/04/intel_amd_arm_cpu_vulnerability/)"%}As [The Register](https://www.theregister.co.uk/2018/05/21/spectre_meltdown_v4_microsoft_google/) reports:

> It is yet another "wait, why didn't I think of that?" design oversight in modern out-of-order-execution engineering. And it was found by Google Project Zero's Jann Horn, who helped uncover the earlier Spectre and Meltdown bugs, and Ken Johnson of Microsoft. 

> [...]

> The name Spectre was chosen deliberately: it is like observing a ghost in the machine. Private data can be discerned by watching the cache being updated by the processor's speculative execution engine. This speculation is crucial to running chips as fast as possible, by leaving as few processing units as idle as possible, but the downside is that the CPU can be tricked into revealing the contents of memory to applications and scripts that should be off limits.

This variant seems limited to within-process snooping, such as script files running in a program.  As a web-enthusiast, this caught my eye.  The patches in web-browsers for the original Meltdown-Spectre bugs should also handle this one, but it's a reminder that the extent of these problems is not completely known.
