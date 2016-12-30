#!/usr/bin/env ruby
# https://www.hackerrank.com/challenges/a-very-big-sum

array_size = gets
numbers = gets.strip.split(' ').map(&:to_i)

puts numbers.reduce(0){|a,e| a+e}
