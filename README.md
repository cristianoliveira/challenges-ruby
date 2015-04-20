# Challenges
Some challenges solved in ruby

#Excellent Numbers
Today’s exercise channels our inner Project Euler:

An excellent number n has an even number of digits and, if you split the number into the front half a and the back half b, then b 2 − a 2 = n. For example, 3468 = 682 − 342 = 4624 − 1156 = 3468, so 3468 is an excellent number. The only two-digit excellent number is 48 and the only four-digit excellent number is 3468. There are eight six-digit excellent numbers, 140400, 190476, 216513, 300625, 334668, 416768, 484848, and 530901, and their sum is 2615199. What is the sum of the 10-digit excellent numbers?

Your task is to compute the sum of the 10-digit excellent numbers; in the spirit of Project Euler, your solution should take no more than one minute of computation time. 

```
ruby excellent_numbers/test_excellent_numbers.rb
```

#Clock Sequence
Consider the infinite repeating sequence of digits:
1234321234321234321...

Amazingly, you can break this sequence of digits into a sequence of integers such that the sum of the digits in the n'th value is n.

The sequence goes as follows:
1, 2, 3, 4, 32, 123, 43, 2123, 432, 1234, 32123, ...

Let vn be the n'th value in this sequence. For example, v2 = 2, v5 = 32 and v11 = 32123.

Let S(n) be v1 + v2 + ... + vn. For example, S(11) = 36120, and S(1000) mod 123454321 = 18232686.

Find S(1014) mod 123454321.

```
ruby clocksequence/test_clocksequence.rb
```

#FizzBuzz (classic)
Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

```
ruby fizzbuzz/test_fizzbuzz.rb
```

#Licence
Creative Commons
