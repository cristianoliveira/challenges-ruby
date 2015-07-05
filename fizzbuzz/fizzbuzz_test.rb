require 'test/unit'
require_relative 'fizzbuzz.rb'
class FizzBuzzTest < Test::Unit::TestCase
  def test_given_tree_it_should_print_fizz
    #given
    number = 3
    expected = "Fizz"
    
    #when
    result = FizzBuzz.when(number)

    #given
    assert_equal(expected, result)
  end

  def test_given_five_it_should_print_buzz
    #given
    number = 5
    expected = "Buzz"

    #when
    result = FizzBuzz.when(number)

    #then
    assert_equal expected, result
  end

  def test_given_fifteen_it_should_print_fizzbuzz
    #given
    number = 15
    expected = "FizzBuzz"

    #when
    result = FizzBuzz.when(number)

    #then
    assert_equal expected, result
  end

  def test_given_eleven_it_should_print_number
    #given
    number = 11
    expected = "11"

    #when
    result = FizzBuzz.when(number)

    #then
    assert_equal expected, result 
  end

  def test_when_given_30_it_should_print_fizzbuzz
    #given
    number = 30
    expected = "FizzBuzz"

    #when
    result = FizzBuzz.when(number)

    #then
    assert_equal expected, result
  end
end
