class StatementReverser
  def reverse(statement)
    return nil unless statement

    reversed = statement.reverse!
    reversed_words = reversed.split(' ')
    words = reversed_words.map{|w| w.reverse!}

    return words.join(' ')
  end
end
