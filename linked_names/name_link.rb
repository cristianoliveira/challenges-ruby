class NameLink
  attr_accessor :name, :next_name
  
  def initialize(name)
    @name = name
  end

  def last_letter
    @name[@name.length - 1].upcase
  end
  
  def first_letter
    @name[0].upcase
  end

end
