require_relative 'word_mapper.rb'

class IsomorficWord 
   def valid?(word, word_compare)
    mapper = WordMapper.new
    word_map = mapper.map word 
    word_compare_map = mapper.map word_compare 
    
    word_map.values == word_compare_map.values
  end
end
