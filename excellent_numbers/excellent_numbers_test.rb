require 'test/unit'
require_relative 'excellent_numbers.rb'
require_relative 'excellent_numbers_splitter.rb'
require_relative 'excellent_numbers_validator.rb'
require_relative 'excellent_numbers_finder.rb'

class TestExcellentNumbers < Test::Unit::TestCase
  
  def test_split_number_given_48_it_should_return_4_and_8
    #given
    number = 48
    expected = [4,8]

    #when
    result = ExcellentNumbersSplitter.new.split(number)

    #then
    assert_equal expected, result
  end

  def test_split_number_given_3468_it_should_return_34_and_68
    #given
    number = 3468
    expected = [34,68]

    #when
    result = ExcellentNumbersSplitter.new.split(number)

    #then
    assert_equal expected, result
  end
  
  def test_split_number_given_140400_it_should_return_140_and_400
    #given
    number = 140400
    expected = [140,400]

    #when
    result = ExcellentNumbersSplitter.new.split(number)

    #then
    assert_equal expected, result
  end

  def test_validate_number_given_48_it_should_return_true
    #given
    number = 48 

    #when
    result = ExcellentNumbersValidator.new.valid?(number)

    #then
    assert_true result
  end

  def test_validate_number_given_3468_it_should_return_true
    #given
    number = 3468 

    #when
    result = ExcellentNumbersValidator.new.valid?(number)

    #then
    assert_true result
  end

  def test_validate_number_given_3498_it_should_return_false
    #given
    number = 3498 

    #when
    result = ExcellentNumbersValidator.new.valid?(number)

    #then
    assert_false result
  end

  def test_find_excellents_between_0_99_it_should_return_array
    #given
    min, max = 0, 99
    expected = [48]

    #when
    result = ExcellentNumbersFinder.new.find_all_between(min, max)

    #then
    assert_equal expected, result
  end

  def test_find_excellents_between_1000_9999_it_should_return_array
    #given
    min, max = 1000, 9999
    expected = [3468]

    #when
    result = ExcellentNumbersFinder.new.find_all_between(min, max)

    #then
    assert_equal expected, result
  end
 
  def test_find_excellents_between_100000_999999_it_should_return_array
    #given
    min, max = 100000, 999999
    expected = [140400, 190476, 216513, 300625, 334668, 416768, 484848, 530901]

    #when
    result = ExcellentNumbersFinder.new.find_all_between(min, max)

    #then
    assert_equal expected, result
  end

  def test_sum_excellents_between_100000_999999_it_should_return_2615199
    #given
    min, max = 100000, 999999
    expected = 2615199 

    #when
    result = ExcellentNumbers.new.get(min, max)

    #then
    assert_equal expected, result
  end

end
