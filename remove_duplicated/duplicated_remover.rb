require 'set'
class DuplicatedRemover
  def remove_from(array_to_remove)
    uniques = Set.new

    for i in array_to_remove do
      unless i.nil? 
        uniques.add(i)
      end
    end

    uniques.to_a
  end
end
