class MeoizedFibonacci

  def initialize()
    @memorized = Hash.new
  end

  def calcule(number)
    return 0 if number == 0
    return 1 if number <= 2
    return @memorized[number] if @memorized[number]
    
    @memorized[number] = calcule(number - 1) + calcule(number - 2)
  end

end
