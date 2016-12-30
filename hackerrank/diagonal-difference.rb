#!/usr/bin/env ruby
# https://www.hackerrank.com/challenges/diagonal-difference

n = gets.strip.to_i
matrix = Array.new(n)
for line in (0..n-1)
    values = gets.strip.split(' ').map(&:to_i)
    matrix[line] = values
end

# 1 2 3
# 4 5 6
# 7 8 9
# result 1 + 5 + 9 + 3 + 5 + 7

puts matrix.map
  .with_index{|line, i| [line[i], line[line.size-1-i]] }
  .reduce(0) {|acc, (x, y)| acc + y - x }.abs
