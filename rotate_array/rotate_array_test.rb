require 'test/unit'
require_relative 'rotator.rb'

class RotateArrayTest < Test::Unit::TestCase

  def test_when_provide_zero_to_rotate_it_should_not_change_array
    # given
    times = 0
    array = [1,2,3,4]
    expected_array = [1,2,3,4]

    # when
    result_array = Rotator.new.rotate array, times

    # then
    assert_equal expected_array, result_array

  end

  def test_when_rotate_1_it_should_exchange_to_23451
    #given
    times = 1
    array = [1,2,3,4,5]
    expected_array = [2,3,4,5,1]

    # when
    result_array = Rotator.new.rotate array, times

    # then
    assert_equal expected_array, result_array
  end

  def test_when_rotate_2_times_it_should_exchange_to_34512
    #given
    times = 2
    array = [1,2,3,4,5]
    expected_array = [3,4,5,1,2]

    # when
    result_array = Rotator.new.rotate array, times

    # then
    assert_equal expected_array, result_array
 
  end
 
  def test_when_rotate_6_times_it_should_exchange_to_23451
    #given
    times = 6
    array = [1,2,3,4,5]
    expected_array = [2,3,4,5,1]

    # when
    result_array = Rotator.new.rotate array, times

    # then
    assert_equal expected_array, result_array
 
  end

  def test_when_3_times_an_array_of_7_elements_it_should_result_4567123
    #given
    times = 3
    array = [1,2,3,4,5,6,7]
    expected_array = [4,5,6,7,1,2,3]

    # when
    result_array = Rotator.new.rotate array, times

    # then
    assert_equal expected_array, result_array
 
  end


end
