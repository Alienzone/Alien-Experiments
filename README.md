# Alien-Experiments
Typically Alien style code ideas tend to involve some form of cryptography 
and experimental codes that probe into the unknown.

# test1.pl
How many iterations of sha on sha does it take to change a lighbulb?

The lightbulb being a trigger word that the sha must contain.
Consider it a proof of work.

We make a 64byte random number and sha it. We then take a sha of the
sha until it matches the lighbulb.

We count how many iterations and the time taken to make matches.
When the lightbulb is found we stop and record the shas and the seed data.

We discover that single step matches being a direct result of the seed data
means that particular seed data will always produce a sha containing the lightbulb.
Pretty neat way to target hashes and a nice experiment in chaining with proof of work.

# test2.pl
Take a word, split it into chars, make a directory
tree char by char, at the end of the word create a 
sha256 of the whole word and save a file as sha256.
For example, to record the sha 'Alien' we follow 
the path....... ./A/l/i/e/n/Alien.sha256.

This simple program reads a dictionary file line by
line and makes a directory tree following the chars
before moving onto the next word.

Any alphanumeric input can be used to seed the tree.

Requires a huge amount of disk space overall and will
most likely exceed the maximum number of directories
allowed in a single filesystem quite quickly.
Great fun.

# Test3

# Test4

Cheers o7
