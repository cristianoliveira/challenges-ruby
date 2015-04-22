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
end
