require 'test/unit'
require_relative 'same_char_finder.rb'
require_relative 'chunker.rb'

class SameCharFinderTest < Test::Unit::TestCase

  def setup
    @finder = SameCharFinder.new(Chunker.new)
  end

  def test_it_should_return_empty_array_when_word_is_nil
    # given
    word = nil
    # when
    result = @finder.find_in word
    # then
    assert_true result.empty?
  end

  def test_it_should_return_empty_array_when_word_is_empty
    # given
    word = ""
    # when
    result = @finder.find_in word
    # then
    assert_true result.empty?
  end

  def test_it_should_return_o2_when_word_is_foo
    # given
    word = "foo"
    expected = ["o", 2]
    # when
    result = @finder.find_in word
    # then
    assert_equal expected, result
  end

  def test_it_should_return_o5_when_word_is_vlooooogo
    # given
    word = "vlooooogo"
    expected = ["o", 5]
    # when
    result = @finder.find_in word
    # then
    assert_equal expected, result
  end

end
