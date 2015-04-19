require './clock.rb'

class ClockCalculator
 
  def sum_until(number)
    sum = 0

    number.times do |i|
      res = Clock.new.get(i+1)
      sum += res.to_i
    end

    sum
  end

end
