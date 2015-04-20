class ExcellentNumbersSplitter

  def split(number)
    number_as_string = number.to_s
    number_size = number_as_string.size
    
    to_array_number number_as_string, number_size
  end

  private
  def to_array_number(number, size)
    first = number[0, size/2].to_i
    second = number[size/2, size].to_i

    [first, second]
  end

end
