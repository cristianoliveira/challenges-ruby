#!/bin/ruby

n = gets.strip.to_i

range = (1..n)
range.each {|i| puts ('#'*i).rjust(n, ' ')}
