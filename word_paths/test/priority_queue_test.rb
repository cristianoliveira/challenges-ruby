require 'test/unit'
require_relative '../lib/priority_queue'

class PriorityQueueTest < Test::Unit::TestCase
  def test_it_keep_the_queue_sorted_following_the_strategy
    pq = PriorityQueue.new(&:length)
    assert_equal %w(cat), pq.push('cat')
    assert_equal %w(cat duck), pq.push('duck')
    assert_equal %w(ok cat duck), pq.push('ok')
  end
end
