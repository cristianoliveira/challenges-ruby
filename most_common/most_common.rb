# Resposible to retrieve the most common unique item in an array
#
class MostCommon
  def initialize(names)
    @names = names
  end

  def get
    most_common_name = ''
    most_times_occurs = 0
    occurrencies = Hash.new(0)

    for name in @names.sort
      occurrencies[name] += 1
      if occurrencies[name] == most_times_occurs
        most_common_name = ''
      elsif occurrencies[name] > most_times_occurs
        most_common_name = name
        most_times_occurs = occurrencies[name]
      end
    end
    most_common_name
  end
end
