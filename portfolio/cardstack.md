---
title: "Card Stack"
date: "Winter 2014"
updated: "Apr 30 2015"
subtitle: "Alternative Dice Android App"
tags: ["android"]
thumb: "cardstack-thumb.png"
---

![Card Stack]({{ page.pimg }}cardstack.png)

For those of you who have not played it, Settlers of Catan is an amazingly fun game.
It also happens to be one of the most infuriating games ever as well.
Much of the game lies in the fate of the dice rolls, and getting the wrong numbers can mean going from first place to last in seconds.
Some games end up extremely balanced, with the rolls seeming to be evenly distributed across all players.
Other games are a heartache where you can go the whole game without your numbers being rolled.

As an avid player of Settlers, I hated how some games were entirely decided by luck and wanted to find a solution to the problem.
Thankfully, the Settlers of Catan mobile/online versions of the game have implemented a balancing method called Card Stack
which makes the game less random and more fair.
Unfortunately, implementing Card Stack in real life is far from trivial compared to a computer, so I made an Android app to fix that.

Card stack is an alternative method for rolling dice which converts the mathematical distribution of dice rolls into a countable deck of cards.
What this means is that for every possible dice roll (which are all equally likely assuming normal die), an equivalent card is created and added to a deck.
Each card will have the sum of the 2 dice, as well as the two rolls themselves.
Then, you simply play the game as normally but instead draw the top card of the deck whenever you need to "roll".
If you run out of cards, you just reshuffle and continue playing.

Now, Card Stack has two major implications.

1. The number of times each number will be rolled is constant
2. A number's probability of being rolled increases each time it isn't rolled and decreases each time it is rolled

This changes gameplay a lot by making streaks much less likely, and I think it makes it a lot more fun!
For the purpose of this post, I won't go into more details explaining how it changes the gameplay,
but I'm sure if you try it you will immediately understand how radical and awesome Card Stack is.

At its core, Card Stack is really just a card deck simulator.
When first launched, it creates a deck by permuting every dice roll possible and creating a virtual "card" for that roll.
The reason for this as opposed to just keeping track of counts is that some versions of Settlers
(and completely other games in fact) require knowing the individual dice rolls.
After that, it simply shows a button allowing you to draw the top card, and shows optional settings such as card counts remaining, reshuffles, etc.

Currently I am working to get this published in Google Play and make the UI cleaner.

[Source Code](https://github.com/glentakahashi/cardstack)
