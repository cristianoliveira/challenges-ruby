##
# Responsible for calculate distance between two given words.
# Calcule based on Hamming Distance algorithm
class EditDistance
  ##
  # Calcule edit distance between two words
  #
  # @param word [String]
  # @param target [String]
  # @return distance [Integer]
  def self.calcule(word, target)
    return nil if word.nil? || word.empty? || target.nil? || target.empty?

    differences = word.chars.zip(target.chars).select { |w, t| w != t }
    differences.length
  end
end
