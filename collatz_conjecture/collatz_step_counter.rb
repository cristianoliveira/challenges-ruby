class CollatzStepCounter

  def initialize(calculator)
    @calculator = calculator
  end

  def count_steps_for(number)
    steps = 1
    next_number = @calculator.calcule number

    p "next_number #{next_number}"
    while next_number do
      next_number = @calculator.calcule next_number
      p "next_number #{next_number}"
      steps += 1
    end

    return steps
  end

end
