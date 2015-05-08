---
title: "Fs-easymotion"
date: "Summer 2014"
updated: "May 8 2015"
subtitle: "Zsh filesystem navigator"
tags: ["linux"]
thumb: "fs-easymotion-thumb.png"
---

![An animation showing how to use easyGrep]({{ page.pimg }}fs-easymotion.gif)

While doing my second internship at Palantir, I found myself regularly using the grep and find commands in a very
similar fashion to find files or folders which contained a certain phrase, class, or method.

For example, I often typed something like "grep -riI 'click here' ." when I wanted to find out which piece of code contained logic for the button text.
Then I would navigate the directory tree to get to the file I that had the line I found relevant.
Or, I might write "find . -iname 'mainCode.coffee'" when trying to find out where the main code for a newly cloned repository was.
Similarly, I would the manually navigate the directory tree to find and open the file.

Following the age-old paradigm of DRY (Don't Repeat Yourself) I set out to write a new addon to zsh which
would help me reduce all of this down into a few short commands.
(Yes, I could use an IDE for many of the features I listed, but I spend 90% of my time in the shell so I wanted to find a way to do it there)
After reading up on the basics of ZSH scripting,
I was able to create a very hacky script that used sed, grep, and find to find and open files or directories quickly.
By typing "easyGrep method", my script will find all the files that contain method in them,
and then give a prompt to automatically open a file by line number if requested.
The same happens for "easyFind" and "easyCd".
It is still a work in progress, but I actually use it on a daily basis and am constantly improving it.

[Source Code](https://github.com/glentakahashi/fs-easymotion)
