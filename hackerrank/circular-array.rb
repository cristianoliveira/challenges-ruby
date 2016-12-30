#!/usr/bin/env ruby

n,k,q = gets.strip.split(' ').map(&:to_i)
a = gets.strip.split(' ').map(&:to_i)
k.times { a.insert(0, a.pop) }
for a0 in (0..q-1)
  m = gets.strip.to_i
  puts a[m]
end
