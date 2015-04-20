require './excellent_numbers_splitter.rb'

class ExcellentNumbersValidator
  
  def valid?(number)
    a_number = ExcellentNumbersSplitter.new.split(number)
    
    #p "NUMBERS #{a_number[0]} - #{a_number[1]}"
    correct_size?(a_number) &&
      first_less?(a_number) &&
        excellent?(a_number, number)

  end
   
  # b^2 - a^2 = number
  # b^2 = number + a^2
  # bˆ2 = result
  # b = sqrt(result)
  # b must be perfect (integer)
  def has_excellent?(second)
    snum = ExcellentNumbersSplitter.new.split(number)
    if(snum.size == 2)
      result = Math.sqrt(number + snum[0]) 
      perfect?(result)
    end
  end

  private
  def perfect?(number)
    (number - number.truncate) == 0
  end
  
  def same_values?(numbers_array)
    numbers_array.map{|a| a == numbers_array[0] } == [true, true]
  end

  def first_less?(numbers_array)
    return false if numbers_array[0] == 0
    numbers_array[0] < numbers_array[1] 
  end

  def correct_size?(numbers_array)
    numbers_array.size == 2
  end

  def excellent?(number_array, number)
    (number_array[1]**2) - (number_array[0]**2) == number 
  end
end
