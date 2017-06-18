require 'test/unit'
require_relative 'my_linked_list'

class ReverseLinkedListTest < Test::Unit::TestCase
  def test_it_parse_to_array
    one = MyLinkedList.new(10)
    two = MyLinkedList.new(20, one)
    linked = MyLinkedList.new(30, two)

    result = linked.to_a

    assert_true(result.include?(10))
    assert_true(result.include?(20))
    assert_true(result.include?(30))
  end

  def test_it_keeps_the_correct_order
    one = MyLinkedList.new(10)
    two = MyLinkedList.new(20, one)
    linked = MyLinkedList.new(30, two)

    assert_equal(linked.to_a, [10, 20, 30])
  end

  def test_it_reverts_the_order
    one = MyLinkedList.new(10)
    two = MyLinkedList.new(20, one)
    linked = MyLinkedList.new(30, two)

    assert_equal(linked.revert.to_a, [30, 20, 10])
  end
end
