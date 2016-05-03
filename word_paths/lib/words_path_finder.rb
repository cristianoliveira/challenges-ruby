require 'pry-byebug'
require_relative 'priority_queue'
require_relative 'edit_distance'

##
# Responsible for reach the shortest path between two words
# in a given dictionary
#
class WordsPathFinder
  def initialize(dictionary)
    @dictionary = dictionary
  end

  def find(start_word, end_word)
    return [] unless @dictionary.include?(start_word) &&
                     @dictionary.include?(end_word)

    chains = PriorityQueue.new { |c| EditDistance.calcule(c.last, end_word) }
    chains.push [start_word]

    until chains.empty? ||
          EditDistance.calcule(chains.first.last, end_word) == 1
      chain = chains.shift

      neighbours = @dictionary.select do |w|
        EditDistance.calcule(chain.last, w) == 1 && !chain.include?(w)
      end

      neighbours.each { |w| chains.push chain.clone.push(w) }
    end

    chains.first.push(end_word)
  end
end
