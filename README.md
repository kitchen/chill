I've been reading "[Search Inside Yourself](http://www.siybook.com)" recently and ran into a stumbling block.
Some of the exercises in the book require timing and prompts.
This is great, except I haven't found anything that can do that for me, and I don't want to have to phone a friend every time I want to meditate.
After explaining the problem to [@boogah](http://twitter.com/boogah), he had a BRILLIANT idea.
Just write a bash script.

So I did.

And then I thought: I can make this better!

So I did.

# usage

```
bash player.bash foo.chill
```

# chill file format

It's very easy to write your own chill files.
Each line is a colon separated sequence which tells the player what to say, and then how long to wait before moving on.
Lines beginning with #, with or without leading whitespace, are ignored as comments.
Blank lines are not ignored. They actually will cause "say" to be called with an empty string, and sleep for no time, so they are effectively ignored, but they aren't explicitly ignored. This may change in the future.

A very basic "Hello World" example chill file can be found in the chill/ directory.

# contributions

I'm all for having more chill files, so if you want, you can add some and send me a PR.

