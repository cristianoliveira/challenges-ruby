require 'test/unit'
require_relative '../lib/edit_distance'

class EditDistanceTest < Test::Unit::TestCase
  def test_it_returns_nil_for_empty_values
    assert_nil EditDistance.calcule(nil, nil)
    assert_nil EditDistance.calcule('duck', nil)
    assert_nil EditDistance.calcule('', '')
  end

  def test_it_retuns_the_difference_between_two_words
    assert_true EditDistance.calcule('cat', 'cag') == 1
    assert_true EditDistance.calcule('cat', 'cog') == 2
    assert_true EditDistance.calcule('cat', 'dog') == 3
  end
end
