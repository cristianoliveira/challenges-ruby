require 'test/unit'
require_relative 'fibonacci.rb'
require_relative 'meoized_fibonacci.rb'

class MeoizedFibonacciTest < Test::Unit::TestCase

  def setup
    @fibonacci = MeoizedFibonacci.new
  end

  def test_it_should_return_zero_when_number_is_0
    # given
    expected = 0
    number = 0

    # when
    result = @fibonacci.calcule number

    # then
    assert_equal expected, result
  end

  def test_it_should_return_one_when_number_is_0
    # given
    expected = 1
    number = 1

    # when
    result = @fibonacci.calcule number

    # then
    assert_equal expected, result
  end

  def test_it_should_return_one_when_number_is_2
    # given
    expected = 1
    number = 2

    # when
    result = @fibonacci.calcule number

    # then
    assert_equal expected, result
  end

  def test_it_should_return_two_when_number_is_3
    # given
    expected = 2
    number = 3

    # when
    result = @fibonacci.calcule number

    # then
    assert_equal expected, result
  end


  def test_it_should_return_3_when_number_is_4
    # given
    expected = 3
    number = 4

    # when
    result = @fibonacci.calcule number

    # then
    assert_equal expected, result
  end

  def test_it_should_return_5_when_number_is_5
    # given
    expected = 5
    number = 5

    # when
    result = @fibonacci.calcule number

    # then
    assert_equal expected, result
  end

  def test_it_should_return_8_when_number_is_6
    # given
    expected = 8
    number = 6

    # when
    result = @fibonacci.calcule number

    # then
    assert_equal expected, result
  end

  def test_it_should_return_13_when_number_is_7
    # given
    expected = 13
    number = 7

    # when
    result = @fibonacci.calcule number

    # then
    assert_equal expected, result
  end

  def test_it_should_return_21_when_number_is_8
    # given
    expected = 21
    number = 8

    # when
    result = @fibonacci.calcule number

    # then
    assert_equal expected, result
  end

  def test_it_should_return_34_when_number_is_9
    # given
    expected = 34
    number = 9

    # when
    result = @fibonacci.calcule number

    # then
    assert_equal expected, result
  end

  def test_it_should_return_55_when_number_is_10
    # given
    expected = 55
    number = 10

    # when
    result = @fibonacci.calcule number

    # then
    assert_equal expected, result
  end

  def test_it_should_return_832040_when_number_is_30
    # given
    expected = 832040
    number = 30

    # when
    result = @fibonacci.calcule number

    # then
    assert_equal expected, result
  end

end
