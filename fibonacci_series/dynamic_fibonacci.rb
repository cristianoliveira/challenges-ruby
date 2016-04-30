class DynamicFibonacci
  def calcule(number)
    fib = [0, 1]

    (2..number).each do |n|
      fib[n] = fib[n-1] + fib[n-2]
    end

    fib[number]
  end
end
