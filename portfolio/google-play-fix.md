---
title: "Google Play Website Fix"
date: "December 2011"
updated: "February 23 2013"
subtitle: "Greasemonkey Script"
tags: ["hack"]
thumb: "google-fix-thumb.png"
---

![My Patched Google Play Website]({{ page.pimg }}google-fix.png)

Back in December of 2011, I re-installed my Android phone because like with my computers, I like to reformat my phone regularly to clear it out.
When I started to install my apps again via the online interface at the time,
I noticed when I tried to view the 10th page of "My Apps" and beyond, they appeared completely blank.
Curious, I googled the problem and found that every other person had this problem, so it must be a problem with the website itself.

Upon using Chrome DOM/Javascript inspector, I figured out that the "My Apps" section was actually
a very long div that would use jQuery to change its x coordinate to show different pages.
However, it had its width hard coded at 10000px, which happens to be the size of 10 pages!
Quickly I could fix the bug just by changing width to something larger, or auto.
Suddenly, I could see all of my pages, and I was very happy again.

Feeling bad for the other less-technical people who didn't figure this out, I thought "why not write a Greasemonkey script to do this for them?"
I looked up how to write a Greasemonkey script, and quickly found a tutorial that helped me to write one.
I uploaded my script to userscripts.org and linked it on all the websites where people were having problems.
Excited, I checked back a day later, and 20 people had installed my script! I was happy with myself,
and I forgot about it until about a month ago when I decided to check my script again.
My jaw nearly dropped when I found out that it had been installed over 10,000 times in the past year.
That made me proud, and although the fix is no longer relevant because the new version of Google Play fixed the bug,
you used to be able to see my script at (the now defunct) [http://userscripts.org/scripts/show/120350](http://userscripts.org/scripts/show/120350)

[Source Code](https://github.com/glentakahashi/android-market-fix)
