class LetterCounter

  def initialize(lines)
    @lines = lines
  end

  def map!
    letters = Hash.new

    for word in @lines do
      for i in 0..word.length do
        letter = word[i]

        if letters[letter].nil?
          letters[letter] = 1 unless letter.nil?
        else
          letters[letter] += 1
        end
      end
    end

    sorted = Hash.new
    for k in letters.sort do
       sorted[k[0]] = k[1]
    end

    sorted
  end
end
