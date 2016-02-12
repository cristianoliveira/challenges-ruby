class DivisibleDigits
  def self.count_for(number)
    return 0 if number.nil? || number.zero?

    digits = number.to_s.chars.map(&:to_i)
    digits.map{ |d| !d.zero? && number % d == 0  }.count(true)
  end
end
