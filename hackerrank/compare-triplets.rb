#!/bin/ruby

alice = gets.strip.split(' ').map(&:to_i)
bob = gets.strip.split(' ').map(&:to_i)

result = alice.zip(bob)
  .map{ |a,b| a==b ? [0,0] : a>b ? [1,0] : [0,1] }
  .reduce([0,0]) { |acc, e| acc.zip(e).map{|a,e| a+e} }

puts "#{result[0]} #{result[1]}"
