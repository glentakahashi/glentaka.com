---
title: "Where's Glen"
date: "2015 - Present"
updated: "May 8 2015"
subtitle: "Realtime Travel Tracker"
tags: ["website", "backend"]
thumb: "wheresglen-thumb.png"
---

![Where's Glen]({{ page.pimg }}wheresglen.png)

After graduating from UCLA in March 2015, I set off on a multi-month, unplanned journey around the world.
At [Palantir](https://palantir.com), I had the pleasure of working with a friend named Pulkit,
who had done an unplanned road-trip around the US.
He told me that his friends and family were always asking where he was on his trip so he created a
[website](http://whereispulkit.com) that allowed them to track where he was in real-time.

I thought this was a brilliant and useful idea, so naturally I wanted to do the same for my own trip.
Unfortunately, because I was travelling internationally, my service was spotty and
I didn't have the luxury of being able to constantly charge my phone via a car charger.
This meant that his open-source code and most other conventional methods of constant location reporting to a web service would be unpractical.
Luckily, I found an alternative solution to economically get my location by using the already-active Google Location History tied to my phone.

I didn't get the chance to start development until I was already on vacation, but
once I found the free time to write some code, I held a mini-hackathon for myself to work on the project.
It was exceptionally hot in Dubai so I hid in the Dubai Mall at a cafe while I was avoiding the 100+ degree weather outside.
In the few hours I was there, I wrote some 11th-hour-hackathon-quality code, and ended up with a very basic prototype.

How it works is a node.js script running on an hourly basis that does 4 things.

1. Download Google Location History in .kml format using manually exported Google cookies and wget
2. Parse the downloaded .kml into json
3. Condense points into groupings based on geographical location and time
4. Reverse Geocode groupings to get City, State, Country

In the end, I had a workable project that allowed me to automatically update my location.
The code still needs work, but I'll leave that task for when I get back from my travels.
For now, you can see my trip history at [http://wheresglen.com](http://wheresglen.com)

[Source Code](https://github.com/glentakahashi/wheresglen.com)
