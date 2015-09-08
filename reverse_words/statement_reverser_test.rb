require 'test/unit'
require_relative 'statement_reverser.rb'

class StatementReverserTest < Test::Unit::TestCase
  def setup
    @reverser = StatementReverser.new
  end

  def test_it_should_return_nil_when_statement_is_nil
    # given
    statement = nil
    # when
    result = @reverser.reverse statement
    # then
    assert_nil result
  end

  def test_it_should_return_it_self_when_statement_is_word
    # given
    statement = "soccer"
    expected = "soccer"
    # when
    result = @reverser.reverse statement
    # then
    assert_equal expected, result
  end

  def test_it_should_return_play_soccer_when_statement_is_soccer_play
    # given
    statement = "soccer play"
    expected = "play soccer"
    # when
    result = @reverser.reverse statement
    # then
    assert_equal expected, result
  end

  def test_it_should_return_we_play_soccer_when_statement_is_soccer_play_we
    # given
    statement = "soccer play we"
    expected = "we play soccer"
    # when
    result = @reverser.reverse statement
    # then
    assert_equal expected, result
  end

  def test_it_should_return_we_play_soccer_a_lot_when_statement_is_lot_a_soccer_play_we
    # given
    statement = "lot a soccer play we"
    expected = "we play soccer a lot"
    # when
    result = @reverser.reverse statement
    # then
    assert_equal expected, result
  end
end
