require_relative 'name_link.rb'

class NameLinkedList
  attr_accessor :first

  def link_array(list)
    size = list.size
    times = 0

    while !list.empty? 
      name = list.shift
      
      unless link(name)
        list.push name
        times += 1
      else
        times = 0
      end

      if times > size
        raise "There are one name in the list not linkable."
      end
    end
  end

  def link(name)
    name_to_link = NameLink.new name
    
    if @first.nil?
      @first = name_to_link
      return true
    else
      linked_name = @first
      begin
        if name_to_link.first_letter == linked_name.last_letter
          linked_name.next_name = name_to_link
          return true
        elsif @first.first_letter == name_to_link.last_letter
          name_to_link.next_name = @first
          @first = name_to_link
          return true
        else
          linked_name = linked_name.next_name
          has_next = !linked_name.nil?
        end

      end while has_next
    end
    
    return false
  end

  def shift
    shifted = @first
    @first = shifted.next_name if shifted 
    return shifted
  end

  def to_array
    arr = [shift.name]
    while @first
      ln = shift
      arr << ln.name if ln
    end
    arr
  end
end
