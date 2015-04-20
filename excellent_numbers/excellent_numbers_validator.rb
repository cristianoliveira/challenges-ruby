require './excellent_numbers_splitter.rb'

class ExcellentNumbersValidator

  def validate(number)
    splitted_number = ExcellentNumbersSplitter.new.split(number)
    
    if splitted_number.size == 2
      (splitted_number[1]**2) - (splitted_number[0]**2) == number 
    end
  end

end
