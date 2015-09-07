require 'test/unit'
require_relative 'max_sum_finder.rb'

class MaxSumFinderTest < Test::Unit::TestCase

  def test_it_should_return_empty_when_array_is_nil
    # given
    expected = [0, 0, 0]
    sequence = []
    # when
    result = MaxSumFinder.new.find_in(sequence)
    # then
    assert_equal expected, result
  end

  def test_it_should_return_empty_when_array_is_empty
    # given
    expected = [0, 0, 0]
    sequence = []
    # when
    result = MaxSumFinder.new.find_in(sequence)
    # then
    assert_equal expected, result
  end

  def test_it_should_return_0_0_when_array_has_one_value
    # given
    expected = [0, 0, 1]
    sequence = [ 1 ]
    # when
    result = MaxSumFinder.new.find_in(sequence)
    # then
    assert_equal expected, result
  end

  def test_it_should_return_0_1_when_to_array_1_1
    # given
    expected = [0, 1, 2]
    sequence = [1, 1]
    # when
    result = MaxSumFinder.new.find_in(sequence)
    # then
    assert_equal expected, result
  end

  def test_it_should_return_0_1_when_array_1_1_minus2
    # given
    expected = [0, 1, 3]
    sequence = [1 , 2, -2]
    # when
    result = MaxSumFinder.new.find_in(sequence)
    # then
    assert_equal expected, result
  end

  def test_it_should_return_1_2_when_array_minus1_1_2
    # given
    expected = [1, 2, 4]
    sequence = [-1 , 2, 2]
    # when
    result = MaxSumFinder.new.find_in(sequence)
    # then
    assert_equal expected, result
  end


  def test_it_should_return_1_3_when_array_1_1_minus2_10
    # given
    expected = [0, 3, 11]
    sequence = [1 , 2, -2, 10, -5]
    # when
    result = MaxSumFinder.new.find_in(sequence)
    # then
    assert_equal expected, result
  end

  def test_it_should_return_2_4_when_array_minus1_minus1_1_1_1
    # given
    expected = [2, 4, 3]
    sequence = [-1, -1, 1, 1, 1, -1, -1]
    # when
    result = MaxSumFinder.new.find_in(sequence)
    # then
    assert_equal expected, result
  end

  def test_solution
    # given
    expected = [2, 5, 104]
    sequence = [2, -4, 6, 8, -10, 100, -6, 5]
    # when
    result = MaxSumFinder.new.find_in(sequence)
    # then
    assert_equal expected, result
  end

  def test_solution2
    # given
    expected = [0, 3, 20]
    sequence = [2, 4, 6, 8, -10, -100, -6, -5]
    # when
    result = MaxSumFinder.new.find_in(sequence)
    # then
    assert_equal expected, result
  end

end
