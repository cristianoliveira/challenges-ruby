require 'test/unit'
require_relative 'divisible_digits'

class DivisibleDigitsTest < Test::Unit::TestCase
  def test_it_returns_0_for_empty_values
    assert_true DivisibleDigits.count_for(nil) == 0
    assert_true DivisibleDigits.count_for(0) == 0
  end

  def test_it_returns_1
    assert_equal 1, DivisibleDigits.count_for(1)
    assert_equal 1, DivisibleDigits.count_for(2)
    assert_equal 1, DivisibleDigits.count_for(20)
  end

  def test_it_returns_2
    assert_equal 2, DivisibleDigits.count_for(12)
    assert_equal 2, DivisibleDigits.count_for(202)
    assert_equal 2, DivisibleDigits.count_for(20230)
  end

  def test_it_returns_3
    assert_equal 3, DivisibleDigits.count_for(1012)
  end
end
