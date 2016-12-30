#!/bin/ruby
# https://www.hackerrank.com/challenges/plus-minus

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

arr.map{|n| n==0 ? [0,0,1] : n > 0 ? [1,0,0] : [0,1,0] }
  .reduce([0,0,0]) { |(ap, an, az), (p,n,z)| [ap+p, an+n, az+z]  }
  .map{|r| r.to_f/arr.size }
  .each{ |e| puts e }
