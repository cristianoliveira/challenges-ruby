class WordMapper
  def map(word)
    map = Hash.new

    for i in 0..word.length - 1 do
      letter = word[i]

      unless map[letter].nil?
        map[letter] << i
      else
        map[letter] = [i] unless letter.nil?
      end
    end

    map
  end
end
