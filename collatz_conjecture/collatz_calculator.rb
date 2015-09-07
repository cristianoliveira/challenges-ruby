# Responsible for calcule Collatz Conjecture
# n -> n/2 (if n is pair) n -> 3n + 1 (if n is odd)
#
class CollatzCalculator

  def calcule(number)
    return nil if number.nil? or number == 0 or number == 1
    return number / 2 if even? number
    return (number * 3) + 1
  end

  private
  def even?(number)
    return number % 2 == 0
  end

end
