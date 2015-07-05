require 'test/unit'
require_relative 'duplicated_remover.rb'

class RemoveDuplicated < Test::Unit::TestCase

  def test_given_1_2_2_3_it_should_return_1_2_3
    # given
    duplicated = [1,2,2,3]
    expected = [1,2,3]
    dup_remover = DuplicatedRemover.new

    # when
    result = dup_remover.remove_from duplicated

    # then
    assert_equal expected, result
  end

  def test_given_2_2_2_3_1_it_should_return_1_2_3
    # given
    duplicated = [2,2,2,3,1]
    expected = [2,3,1]
    dup_remover = DuplicatedRemover.new

    # when
    result = dup_remover.remove_from duplicated

    # then
    assert_equal expected, result
  end

end
