require 'test/unit'
require_relative 'peter_cigarrets.rb'

class PetterCigarretsTest < Test::Unit::TestCase

  def test_with_n_4_k_3_it_should_return_5
    # given
    n = 4
    k = 3
    expected = 5
    petter = PetterCigarrets.new

    # when
    result = petter.calcule(n, k)

    # then
    assert_equal expected, result
  end

  def test_with_n_10_k_3_it_should_return_14
    # given
    n = 10
    k = 3
    expected = 14
    petter = PetterCigarrets.new

    # when
    result = petter.calcule(n, k)

    # then
    assert_equal expected, result
  end

  def test_with_n_100_k_5_it_should_return_124
    # given
    n = 100
    k = 5
    expected = 124
    petter = PetterCigarrets.new

    # when
    result = petter.calcule(n, k)

    # then
    assert_equal expected, result
  end
end
