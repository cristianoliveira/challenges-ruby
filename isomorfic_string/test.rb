require 'test/unit'
require './word_mapper.rb'
require './isomorfic_word.rb'

class IsomorficStringTest < Test::Unit::TestCase

  def test_when_map_foo_it_should_return_map_as_f0_o12
    # given
    word = "foo"
    expected_map = {'f' => [0], 'o' =>[1,2]}
    
    # when
    result = WordMapper.new.map word

    # then
    assert_equal expected_map, result

  end

  def test_when_map_fooboo_it_should_return_map_as_f0_o1245_b_3
    # given
    word = "fooboo"
    expected_map = {'f' => [0], 'o' =>[1,2,4,5], 'b' => [3]}
    
    # when
    result = WordMapper.new.map word

    # then
    assert_equal expected_map, result

  end

  def test_when_compare_given_foo_and_egg_it_should_be_true
    # given
    first_word = "foo" 
    second_word = "egg" 

    # when
    result = IsomorficWord.new.validate first_word, second_word 

    # then
    assert_true result
  end

  def test_when_compare_foo_with_barr_it_should_be_false
    # given
    first_word = "foo" 
    second_word = "bar" 

    # when
    result = IsomorficWord.new.validate first_word, second_word 

    # then
    assert_false result
  end


end
