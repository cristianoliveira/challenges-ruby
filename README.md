# Challenges
Some challenges solved in ruby

# MIT - Airport Reservation System
An airport with only single runway. Build algorithm to reserve the runway for landings
That algorithm should be able to:
 - Request and reserve specific landing times (T)
 - Add T to a Set of reservation (R) if there are no one scheduled within K minutes
 - Remove from R after plane land
 - All the operations should be done in O(log n) time where n = R(size) 
Where T times, R reservation and K is parameter setted in 3

Past schedules must be not allowed

# Linked Names
Given a list/array of names sort themsuch that each name is followed by a name which starts
wth the last character of the previous name.
Example:
```
list = ["Luis","Hector","Selena","Emmanuel","Amish"]
result: ["Emmanuel","Luis","Selena","Amish","Hector"]
```

# Isomorfic words
Given two strings s and t, determine if they are isomorphic. Two strings are isomorphic if the characters in s can be replaced to get t.

For example,"egg" and "add" are isomorphic, "foo" and "bar" are not.

#Evaluate Reverse Polish Notation
Evaluate the value of an arithmetic expression in Reverse Polish Notation. Valid operators are +, -, *, /. Each operand may be an integer or another expression. For example:

```
  ["2", "1", "+", "3", "*"] -> ((2 + 1) * 3) -> 9
  ["4", "13", "5", "/", "+"] -> (4 + (13 / 5)) -> 6
```

#Find Duplicates, Space Edition
We have an array of integers, where:

The integers are in the range 1..n1..n
The array has a length of n+1n+1
It follows that our array has at least one integer which appears at least twice. But it may have several duplicates, and each duplicate may appear more than twice.

Write a function which finds any integer that appears more than once in our array.

[link to challenge](https://www.interviewcake.com/question/find-duplicate-optimize-for-space)


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
