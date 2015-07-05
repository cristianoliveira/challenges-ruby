require_relative 'excellent_numbers_validator.rb'
require_relative 'excellent_numbers_splitter.rb'

class ExcellentNumbersFinder

  def find_all_between(min, max)
    validator = ExcellentNumbersValidator.new
    excellents = []

    for i in min..max
      if(validator.valid?(i))
        excellents.push(i)
      end
    end

    excellents
  end

end
