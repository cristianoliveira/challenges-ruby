class FindDuplicated
  
  def in_array(array)
    dups = []
    array.sort
    
    i = 0
    begin
      # jump duplicateds
      while duplicated? array, i
        dups.push array[i]
        i +=1
      end
      i +=1 
    end while(i < array.size)

    dups
  end

  private
  def duplicated?(array, index)
     array[index] == array[index+1]
  end

end
