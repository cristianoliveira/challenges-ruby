require 'test/unit'
require './find_duplicated.rb'

class TestDuplicateInArray < Test::Unit::TestCase
  
  def test_given_1_2_3_in_array_it_should_return_empty
    #given
    array = [1,2,3]
    expected = []

    #when
    result = FindDuplicated.new.in_array(array)

    #then
    assert_equal expected, result
  end
  
  def test_given_1_1_2_3_it_should_return_array_with_1
    #given
    array = [1,1,2,3]
    expected = [1]

    #when
    result = FindDuplicated.new.in_array(array)

    #then
    assert_equal expected, result
  end

  def test_given_1_1_2_3_3_it_should_return_array_with_1_3
    #given
    array = [1,1,2,3,3]
    expected = [1,3]

    #when
    result = FindDuplicated.new.in_array(array)

    #then
    assert_equal expected, result
  end

  def test_given_1_1_1_1_1_2_3_3_4_it_should_return_array_with_1_3
    #given
    array = [1,1,1,1,1,2,3,3,4]
    expected = [1,3]
    
    #when
    result = FindDuplicated.new.in_array(array)

    #then
    assert_equal expected, result
  end

  def test_given_array_with_duplicateds_it_should_return_array_with_only_dups
    #given
    array = [1,1,1,1,1,2,3,3,4,4,10,1,2,3,9]
    expected = [1,2,3,4]

    #when
    result = FindDuplicated.new.in_array(array)

    #then
    assert_equal expected, result
  end
end
