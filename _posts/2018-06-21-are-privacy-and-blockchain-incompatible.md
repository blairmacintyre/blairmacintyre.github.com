---
title: Are Privacy and Blockchain Incompatible?
date: '2018-06-21T15:43:41-04:00'
author: blair
layout: post
categories:
  - privacy
  - musing
tags:
  - blockchain
  - identity
permalink: 2018/06/21/privacy-blockchain
---
You might have heard of blockchain technology{% marginnote "kidding "Just kidding. I can't imagine anyone reading this hasn't heard of blockchain.  Just in case, here's one [layman's introduction that Forbes Magazing published](https://www.forbes.com/sites/bernardmarr/2017/01/24/a-complete-beginners-guide-to-blockchain/#5e330fc56e60)."%}

One thing that's been bugging me about all the "blockchain for this and that" proposals is the "permanent public record" nature of the ledger.  Given how easy it is to correlate data when you have a lot of it, it seems to me that over time, it is inconceivable that any given blockchain identity wouldn't end up being correlated with a real person behind it.  I posed this worry to some friends:

> I want to ask a naive question about blockchain, that is probably due to some radical misunderstanding of the technology on my part.  I've seen a lot of talk about using blockchain for many things, some of which really need the option of being private or anonymous (e.g., securing ownership of virtual goods, validating identity of avatars in virtual spaces, etc).  My understanding of blockchain is that it is a decentralized ledger, and once entries are committed (and accepted) it defines a "version of truth" about something;  so, you can use it to validate/verify/guarantee the authenticity of transactions of some kind without requiring centralized ownership and control. But, implicit in this (to me) is that the "owner" of some transaction is going to end up being traceable. When we start talking about things that are more tightly bound to the physical world, or to peoples "virtual lives", it seems hard to imagine that there won't be leaked relationships between real and virtual, and given the nature of the ledger, a single exposed relationship would essentially permanently and definitively link the entire history of transactions for that identity on the blockchain to that person.

Folks replied with their thoughts, and some links to some articles, such at this one on [Privacy Preserving Identity System for Ethereum dApps](https://medium.com/uport/privacy-preserving-identity-system-for-ethereum-dapps-a3352d1a93e8). But when I read articles like this, they seem to acknowledge this fundamental problem and end up focused on trying to reduce the likelihood of links between real and virtual identities being exposed: this article, for example, talks about not storing personal data (even encrypted data) on the chain, and using different identities for all apps (to reduce cross-app correlation). 

{% newthought "But, these are not solutions"%}:  they're essentially just obfuscation.  And they don't talk at all about what seems to me to be the biggest problem, correlation between blockchain transations and action in the real world:  when you are exercising your identity on the blockchain _while also doing things in the real world_, how do we prevent bad actors from correlating those things?  Bob bought virtual good **Y** and time **X**, and identity **Z** was used to purchase **Y** at that moment. Or, Bob was near **Y** when action **W** occured; enough of these correlations happen over time, and there is a high probability Bob is **Z**.  Extend this to correlating multiple identies, etc. seems trivial.

Given the possible value of linking possibly a lifetime of verifiable activity to individuals, and the vast amounts of data that might be fed into such a system, I don't see how anyone can assert that blockchain identies would ever be private.

I'm not saying that blockchain-based systems are bad, for some things.  But, I'm dubious of these approaches to preserving privacy and, by extension, using them for anything for which privacy might (at some point) be desired. 

As we look at China's [ramping up its social credit system](https://www.brookings.edu/blog/techtank/2018/06/18/chinas-social-credit-system-spreads-to-more-daily-transactions/), and consider how other countries might consider similar systems in the future, it's unclear to me what kinds of activities any of us should want to be on any blockchain, now and forever.
