require 'test/unit'
require_relative 'chunker.rb'

class ChunkerTest < Test::Unit::TestCase

  def test_it_should_return_empty_array_when_word_is_nil
    # given
    word = nil
    # when
    result = Chunker.new.chunk word
    # then
    assert_true result.empty?
  end

  def test_it_should_return_empty_array_when_word_is_a_empty_string
    # given
    word = ""
    # when
    result = Chunker.new.chunk word
    # then
    assert_true result.empty?
  end

  def test_it_should_return_a_1_when_word_is_a
    # given
    word = "a"
    expected = [["a",1]]
    # when
    result = Chunker.new.chunk word
    # then
    assert_equal expected, result
  end

  def test_it_should_return_a_1_b_2_when_word_is_abb
    # given
    word = "abb"
    expected = [["a",1], ["b",2]]
    # when
    result = Chunker.new.chunk word
    # then
    assert_equal expected, result
  end

  def test_it_should_return_f1_O2_f1_f2_when_word_is_foofoo
    # given
    word = "foofoo"
    expected = [["f",1], ["o",2],["f",1], ["o",2]]
    # when
    result = Chunker.new.chunk word
    # then
    assert_equal expected, result
  end

end
