class Extractor
  # Extract an Array of words with same length from a given
  # raw text from a file.
  #
  # @param raw_text [String] data from a file read
  # @param words_length [Int] word length max for extraction
  # @return [Array] of words
  def self.extract_dictionary(raw_text, words_length)
    return [] if raw_text.nil? || raw_text.empty?

    raw_text.scan(/^[a-z]{#{words_length}}$/)
  end
end
