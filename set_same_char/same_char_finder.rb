# Responsible to find the greatest set of same char occurrencies in a row
# return an array with the letter that most repeat and times it repeat in a given word
# input: "foobar"
# output: ["o", 2]
class SameCharFinder

  def initialize(chunker)
    @chunker = chunker
  end

  def find_in(word)
    return [] if word.nil? || word.empty?

    chunked = @chunker.chunk word
    sorted_by_occurrencies = chunked.sort_by{|set| set[1]}.reverse

    return sorted_by_occurrencies.first
  end

end
