# Alien-Experiments
Typically Alien style code ideas tend to involve some form of cryptography 
and experimental codes that probe into the unknown.

# test1.pl
How many iterations of sha on sha does it take to change a lighbulb? The lightbulb being a trigger word that the sha must contain.Consider it a proof of work.We make a 64byte random number and sha it. We then take a sha of the sha until it matches the lighbulb. We count how many iterations and the time taken to make matches. When the lightbulb is found we stop and record the shas and the seed data. We discover that single step matches being a direct result of the seed data means that particular seed data will always produce a sha containing the lightbulb. Pretty neat way to target hashes and a nice experiment in chaining with proof of work.

# test2.pl
Take a word, split it into chars, make a directory tree char by char, at the end of the word create a sha256 of the whole word and save a file as sha256. For example, to record the sha 'Alien' we follow the path....... ./A/l/i/e/n/Alien.sha256. This simple program reads a dictionary file line by line and makes a directory tree following the chars before moving onto the next word. Any alphanumeric input can be used to seed the tree. Requires a huge amount of disk space overall and will most likely exceed the maximum number of directories allowed in a single filesystem quite quickly. Great fun.

# Test3
Similar to test 2, we take our word and make a sha. We split it into individual chars, make a directory tree char by char, at the end of sha create metadata of the whole sha and save as data. For a fast and efficient lookup table we avoid data duplication as each sha is unique to the data within and therefore creates unique directory paths that have no duplication of data. This black-box method of information storage and retreaval allows us to store similar messages such as 'hello' and 'hello there' in the same space without loosing the individualism and integrity of the messages and their hashes.

# Test4
The profoundness of entropy vs simple brute forcing. It is quite pointless trying to make every possible combination of a unknown using hex based notation. The amount of time needed on this computer to generate every possible combination is longer than the all of the time in the Universe and beyond. However considering, if we used the letters a to z and space, recursively over time we would brute force everything ever written by man in the output. A thought experiment indeed. This program, although logically sound simply proves the futality to brute forcing sha hashes. Enjoy.

Cheers o7
