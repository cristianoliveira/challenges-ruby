##
# Simple and Naive implementation of a priority queue.
#
# I had to implement this queue cause Ruby has no PriorityQueue in its
# standard library. I did it in a simplest way. I could implement a HEAP version
# but it would turn the queue complex and the performance seems good enought
# for this challenge.
class PriorityQueue
  attr_accessor :priority_sort

  def initialize(&block)
    @queue = []
    @priority_sort = block
  end

  ##
  # Push new item to the queue keeping it sorted on given priority strategy
  #
  def push(value)
    @queue << value
    @queue.sort_by! &priority_sort
  end

  def first
    @queue.first
  end

  def last
    @queue.last
  end

  def shift
    @queue.shift
  end

  def empty?
    @queue.empty?
  end
end
