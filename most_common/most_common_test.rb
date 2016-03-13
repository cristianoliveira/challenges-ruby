require 'test/unit'
require_relative 'most_common'

# Tests for MostCommon
#
class MostCommonTest < Test::Unit::TestCase
  def test_it_has_no_most_common
    assert_true MostCommon.new([]).get.empty?
    assert_true MostCommon.new(%w(john mary)).get.empty?
    assert_true MostCommon.new(%w(john john mary mary)).get.empty?
  end

  def test_it_has_most_common
    assert_false MostCommon.new(%w(john)).get.empty?
    assert_false MostCommon.new(%w(john john mary)).get.empty?
  end

  def test_it_return_the_most_common
    assert_equal 'john', MostCommon.new(%w(john john mary)).get
    assert_equal 'mary', MostCommon.new(%w(john john mary mary mary)).get
    assert_equal 'tom', MostCommon.new(%w(john john mary tom tom mary marry tom john tom tom)).get
  end
end
