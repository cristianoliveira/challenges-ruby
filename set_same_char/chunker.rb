# Responsible to chunk a given word by its chars and occurrencies
# input: "foofoo"
# output [["f", 1], ["o", 2],["f",1], ["o", 2]]
class Chunker
  def chunk(word)
    return [] if !word || word.empty?

    chunk = Array.new
    set = Array.new
    word.chars.each do |c|
      unless set[0] == c
        set = [c, 0]
        chunk << set
      end
      set[1] += 1
    end

    return chunk
  end
end
