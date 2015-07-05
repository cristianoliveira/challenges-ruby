require 'test/unit'
require './letter_counter.rb'
require './printer.rb'

class LetterCountTest < Test::Unit::TestCase

  def test_when_given_ababa_it_should_result_a3_b2
    # given 
    lines = ["ababa"]
    expected = {"a"=>3, "b"=>2}
    counter = LetterCounter.new lines

    # when
    result = counter.map!

    p "result #{result}"

    # then
    assert_equal expected, result
    
  end

  def test_when_given_xxxxxababa_it_should_result_a3_b2_x5
    # given 
    lines = ["xxxxxababa"]
    expected = {"a"=>3, "b"=>2, "x"=>5}
    counter = LetterCounter.new lines

    # when
    result = counter.map!

    p "result #{result}"

    # then
    assert_equal expected, result
  end

  def test_when_a50_occurrencies_it_should_print_asteritc_50_time
    # given 
    map = {"a"=> 10}
    expected = ["**********a"]

    # when
    result = Printer.new.print! map

    # then
    assert_equal expected, result
  end
 
  def test_when_a10_b5_occurrencies_it_should_print_asteritc_10_and_5_time
    # given 
    map = {"a"=> 10, "b"=>5}
    expected = ["**********a", "*****b"]

    # when
    result = Printer.new.print! map

    # then
    assert_equal expected, result
  end
  
  def test_when_a100_occurrencies_it_should_print_asteritc_80_time
    # given 
    map = {"a"=> 100}
    a =  "*" * 80 + "a"
    expected = [ "*" * 80 + "a"]

    # when
    result = Printer.new.print! map

    # then
    assert_equal expected, result
  end
 
  def test_when_given_text_file
    # given 
    lines = File.read('./printer.rb')
    counter = LetterCounter.new lines.split("\n") 
    map = counter.map! 
    result = Printer.new.print! map
    assert_true true
  end

end
