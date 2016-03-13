class FindDuplicated
  
  def in_array(array)
    dups = []
    array = array.sort
    
    p "ARRAY SORTED #{array}"

    i = 0
    begin
      if duplicated? array, i
        dups.push array[i]
        
        # jump duplicateds
        while duplicated? array, i
          i +=1
        end
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
