require 'test/unit'
require './excellent_numbers_splitter.rb'
require './excellent_numbers_validator.rb'

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
    result = ExcellentNumbersValidator.new.validate(number)

    #then
    assert_true result
  end

  def test_validate_number_given_3468_it_should_return_true
    #given
    number = 3468 

    #when
    result = ExcellentNumbersValidator.new.validate(number)

    #then
    assert_true result
  end

  def test_validate_number_given_3498_it_should_return_false
    #given
    number = 3498 

    #when
    result = ExcellentNumbersValidator.new.validate(number)

    #then
    assert_false result
  end

end
