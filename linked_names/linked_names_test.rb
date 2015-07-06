require 'test/unit'
require_relative 'names_linked_list.rb'

class LinkedNamesTest < Test::Unit::TestCase

  def test_when_add_luis_selena_it_should_put_luis_first
    # given
    expected = "luis"
    linked_name_list = NameLinkedList.new
    linked_name_list.link expected
    
    # when
    linked_name_list.link "selena"
    result = linked_name_list.shift 

    # then
    assert_equal expected, result.name 
  end

  def test_when_add_amish_selena_it_should_put_selena_first
    # given
    expected = "selena"
    linked_name_list = NameLinkedList.new
    
    linked_name_list.link "amish"
    linked_name_list.link expected
    
    # when
    result = linked_name_list.shift 

    # then
    assert_equal expected, result.name 
  end
  
  def test_when_add_amish_selena_it_should_selena_amish_as_array
    # given
    expected = ["selena","amish"]
    linked_name_list = NameLinkedList.new
    
    linked_name_list.link expected[1]
    linked_name_list.link expected[0]
    
    # when
    result = linked_name_list.to_array

    # then
    assert_equal expected, result
  end
  
  def test_when_amish_selena_hector_it_should_selena_amish_hector_as_array
    # given
    expected = ["selena", "amish", "hector"]
    linked_name_list = NameLinkedList.new
    
    linked_name_list.link expected[1]
    linked_name_list.link expected[2]
    linked_name_list.link expected[0]
    
    # when
    result = linked_name_list.to_array

    # then
    assert_equal expected, result
  end
  
  def test_when_amish_selena_hector_it_should_link_by_name_as_array
    # given
    list_names = ["luis","hector","selena","emmanuel","amish"]
    expected = ["emmanuel","luis","selena","amish","hector"]
    linked_name_list = NameLinkedList.new
    linked_name_list.link_array list_names

    # when
    result = linked_name_list.to_array

    # then
    p "RESULT #{result}"
    assert_equal expected, result
  end

end
