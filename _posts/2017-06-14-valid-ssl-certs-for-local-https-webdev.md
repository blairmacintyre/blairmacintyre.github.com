---
title: Valid SSL certs for local HTTPS webdev
date: 2017-06-14 08:53:38 -04:00
permalink: "/2017/06/14/valid-ssl-certs-for-local-https-webdev/"
categories:
- personal
tags:
- webdev
- ssl
- letsencrypt
author: blair
layout: post
---

{% marginnote "justification" "I decided to deal with it for a practical reason:  I have been giving presentation about our WebAR work using the web, combining the [reveal.js](http://lab.hakim.se/reveal-js/#/) web presentation package with our [argon.js](https://argonjs.io) AR web framework, and running the presentation (with embedded AR demos) in our [Argon4](https://app.argonjs.io) AR-capable mobile web browser. When presenting, it's best to run the server locally, to avoid being at the mercy of whatever net connection is available at a conference, but to access the web location API, websites must be hosted securely.  And, while invalid certficate warnings are annoying, Argon4 currently does not work with invalid certficates at all.  After running into problems with a very slow conference network last week, I decided to fix this." %} In the category of "technical things that are mildly annoying, but I never get around to fixing", the inability to use `https://` with a valid SSL certficate when doing local webdev on my laptop is way up there.  Or, was. 

To have a valid SSL certificate for `https://` the certificate needs to be signed by a real Certficate Authority, and (thus) needs to have a well defined DNS hostname.  Both of these appear challenging on laptops, but turn out to be "not so bad."

Here's how I dealt with it.

{% newthought "First" %}, the hostname issue can be dealt with via one of many _dynamic DNS_ services.  I've been using [no-ip.com](http://no-ip.com) for years on my laptops.  They have a free service (which you need to manually renew each month), so I eventually started paying the small amount they charge per year to support the four (work and personal) laptops I find myself using in different situations.  

As a result, the Macbook Pro I'm using to type this has the name `profblair.redirectme.net` served from [no-ip.com](http://no-ip.com), and I set up a `CNAME` on my DNS hosting service to point from `profblair.bmaci.com` to `profblair.redirectme.net`.{% marginnote "noip" "The [no-ip.com](http://no-ip.com) app lets me control if the DNS entry is assigned a local IP address (if I'm running behind a firewall, such as when I'm at home) or a global IP address (if I'm running on an open domain with global addresses)."%}  I have similar names set up for the other machines.

I've had this working for years, but had never gotten around to figuring out a practical way to set up a valid SSL certficate for these DNS names. Enter [Let's Encrypt](https://letsencrypt.org), a "free, automated, and open certificate authority brought to you by the non-profit [Internet Security Research Group (ISRG)](https://letsencrypt.org/isrg/)."  _Let's Encrypt_ was created to support the goal of getting as much of the web as possible to move from insecure (`http`) to secure (`https`) communication channels, and many domain hosting services now support it for free. {% marginnote "hosting" "I highly recommend both [Dreamhost](https://dreamhost.com) and [netlify.com](https://netlify.com), btw. I've been using _Dreamhost_ for years, and it's the most flexible hosting service I've found for creating and managing a wide variety of web sites and services. We started using _Netlify_ recently to host our open-source github.com sites, as we can set up the sites to auto-deploy from github on each checkin, from multiple branches and configurations.  It's amazing, and free for open source projects!" %}On my hosting provider ([Dreamhost](https://dreamhost.com)), adding SSL with Let's Encrypt to a website is a one-click action, and is managed by them. Similarly for other services I use, like [netlify.com](https://netlify.com), where I host all the [argonjs.io](https://argonjs.io) websites.  

Click and forget. It's excellent.  

{% newthought "The challenge" %} I finally tackled was how to create and deploy _Let's Encrypt_ certificates manually when you don't have an existing website up and running, and it turns out to be pretty easy (if a bit fiddly).  

The instructions for doing this are [here](https://certbot.eff.org/docs/using.html#manual), on the EFF site for `certbot`, the tool used to create and maintain _Let's Encrypt_ certificates. 

There are three steps to setting up the certificates manually.  

First, I needed to [install certbot](https://certbot.eff.org/docs/install.html), which for me on a Mac  was trivially done via Homebrew (`brew install certbot`).  

Second, I needed to run `certbot` in manual mode, and tell it I wanted to authenticate by creating DNS entries on my hosting service (rather than putting files on my website, since the website doesn't exist most of the time).  I did this by running the command 
```
sudo certbot certonly --manual --preferred-challenges dns
```

`certbot` asked me what domains to use.  Note that _Let's Encrypt_ does not support Wildcard domains, but you can list up to 200 domains per certificate, so I listed the eight I cared about (four laptop names, with two domain suffixes _bmaci.com_ and _bmaci.me_).

`certbot` then asked me to create a TXT entry on my DNS server for each of these domains, of the form 
```
_acme-challenge.example.com. 300 IN TXT "gfj9Xq...Rg85nM"
```

This was the most tedious part.  But, after doing it, and waiting a bit to ensure the records propogated, I was greeted with the output 
```
IMPORTANT NOTES:
 - Congratulations! Your certificate and chain have been saved at
   /etc/letsencrypt/live/profblair.bmaci.com/fullchain.pem. Your cert
   will expire on 2017-09-12. To obtain a new or tweaked version of
   this certificate in the future, simply run certbot again. To
   non-interactively renew *all* of your certificates, run "certbot
   renew"
 - If you like Certbot, please consider supporting our work by:

   Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
   Donating to EFF:                    https://eff.org/donate-le
```

There are two important things in this message.

First, note that the certficate and key are stored in a protected directory on the machine you run `certbot` on.  To use them, they need to be moved somewhere accessible.  I moved copies of them to subdirectory in my home directory where I keep all my SSL files.

Second, _Let's Encrypt_ certficates are good for 90 days, so occasionally you need to run `certbot renew`.  We'll see if I remember to do this, and if it works, but I see no reason it won't.  I could put this command in a _cron_ job, but I'm going to do it manually for now (since I need to copy the files somewhere else anyway).

That's it.

Depending on what kind of server you are using, the certificates are used in different ways.  For example, in one of my dev directories, I'm using `grunt`, and had to change part of the `Gruntfile.js` from
```
connect: {
        server: {
                options: {
                        port: port,
                        base: base,
                        livereload: true,
                        open: true
                }
        }
},
```
to something like this (assuming the certs are stored in `ssl/`)
```
connect: {
        server: {
                options: {
                        port: port,
                        protocol: 'https',
                        key: grunt.file.read('ssl/bmaci-com.key.pem').toString(),
                        cert: grunt.file.read('ssl/bmaci-com.crt.pem').toString(),

                        base: base,
                        livereload: true,
                        open: true
                }
        }
    },
```

Hopefully, someone finds this helpful.  I'm personally excited to be able to use valid SSL certificates on my local machine from now on.