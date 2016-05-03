require 'test/unit'
require_relative '../lib/extractor'

class ExtractorTest < Test::Unit::TestCase
  def test_it_returns_empty_array_for_empty_data
    assert_true Extractor.extract_dictionary(nil, 0).empty?
    assert_true Extractor.extract_dictionary('', 2).empty?
  end

  def test_it_returns_words_respecting_max_lenght
    data = "cat\ndog\ncag\ncow\nduck\n"
    assert_true Extractor.extract_dictionary(data, 3).size == 4
    assert_true Extractor.extract_dictionary(data, 4).size == 1
    assert_true Extractor.extract_dictionary(data, 5).empty?
  end
end
