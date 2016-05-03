# Workday Challenge

The problem is to find “word paths”. What this means is that you find a path from one word to 
another word, changing one letter each step, and each intermediate word must be in the 
dictionary.

Example of a solution:
cat ­> cag ­> cog > dog

## Requirements
 - Ruby 2.3.0
 - Rake to run the tests.

## Running
Inside this folder do:
```
 ruby lib/runner.rb /usr/share/dict/words cat dog
```

## Tests
```
rake tests
```

## Important Points
    - Based on examples of this challenge I've assumed that the words given must
    have the same length.
    - I had to implement a PriorityQueue cause Ruby has no standard implementation
    and the challenge description says NO GEMS. I did as simple as I could to
    turn the implementation easier to read.


## Historic
   - First, I thought to create and cache a graph with the words and its neighbours (words most similars)
   I did. But I noticed that running it takes more time than simple keeping a queue sorted.

   - The PriorityQueue sort strategy I've used am implementation of Edit Distance
   see: https://en.wikipedia.org/wiki/Hamming_distance

