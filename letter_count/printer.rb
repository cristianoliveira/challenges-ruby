class Printer
  # for test porpouse it will return array with printed
  def print! map_to_print
    result = Array.new

    for key, val in map_to_print do
      text_to_print = ""
      if val > 80
        80.times{ text_to_print += "*" }
        text_to_print += key
      else
        val.times{ text_to_print += "*" }
        text_to_print += key
      end
      result << text_to_print
    end
    result
  end
end
