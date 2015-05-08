---
title: "Boxes!"
date: "Summer 2011"
updated: "May 7 2015"
subtitle: "Multiplayer HTML5/node.js Game"
tags: ["website", "game", "backend"]
thumb: "boxes-thumb.png"
---

![Boxes Gameplay]({{ page.pimg }}boxes.png)

One weekend during the summer of 2011 with nothing better to do, I thought to myself "I should learn HTML5..."
Naturally, this started a project that would turn into much more than I had originally hoped.

Because the main goal of my project was to learn, I started making a website from scratch.
First I created a simple HTML5 page that would draw a box on a Canvas.
Then, I figured out how to make the box move with JavaScript.

With every project I've ever worked on, there is a point of no return where I fall into a trance of coding; this was no exception.
Once I had a box moving around the screen, something kicked off in my brain and ideas started flowing like a dam had just broken.
Soon came multiple boxes, boxes moving in patterns, boxes of different sizes, etc.
Eventually, I was having so much fun just doodling around that I forgot that I was trying to write good code.

Once I got the fiddling out of my system, I took a step back and starting to refactor my code.
I made a box class, created update and paint loops, and cleaned up a lot of functions.
With this new platform, the possibilities started growing and I decided that I could probably make a game with boxes.
The most logical course of action was to create a snake-like game, because of the simplicity and the fact that everybody knows snake.
I figured out how use JavaScript to use my arrow keys as controls, and added in trailing boxes and "apples" to the page.
Eventually, I had a game. I called it Boxes.

At this point, I probably could have concluded my endeavors a success,
but like most engineers I was already thinking about V2 before I had even finished V1.

Version 2 was going to be multiplayer, but I had no idea how to achieve that.
Since the main goal was to learn some new technologies, I decided to continue the trend and look up what
this new "node.js" thing was that people were raving about.
I downloaded node.js and started looking up tutorials that would help me stream data between clients in real-time.
I decided to use websockets after reading about them online, so I settled on socket.io and started to work.

At first, I used a simple method of every computer simply broadcasting its player's snake location,
but after a few of my clever friends figured out how to abuse that, I implemented cheat detection.
The server would process all of the data instead of the client, so even if a client modified the code to move in super-speed or to teleport,
the server would detect if the moves were illegal and kick them if they were.
With everything finally in place, I tested the game out with my friends and everybody had a blast.
Something about how I programmed the physics and controls made it the perfect balance of fun, luck, and skill.
To this day, whenever I show my friends Boxes, it usually ends up with 15 minutes of distraction.

Once completed, I wanted to host my game somewhere that wasn't my 8 year old Compaq desktop sitting in my closet, so I looked up node.js hosting.
Finally, I settled on Heroku, but I deployed my app and found out that Heroku didn't actually support websockets.
Searching around some more, I found no suitable alternatives that supported websockets, so I launched my own instance on Amazon EC2, and hosted it there.
Voila!

To play Boxes today, visit my website [http://boxes.glentaka.com](http://boxes.glentaka.com)

[Source Code](https://github.com/glentakahashi/boxes)
