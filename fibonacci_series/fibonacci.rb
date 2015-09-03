class Fibonacci
  def calcule(number)
    return 0 if number == 0
    return 1 if number <= 2

    calcule(number - 1) + calcule(number - 2)
  end
end
