class NeoSet
  include Enumerable

  def initialize(values)
    @values = values.reduce([]) {|a, e| a.include?(e) ? a : a + [e] }
  end

  def add(value)
    return if @values.include?(value)
    @values.push(value)
  end

  def delete(value)
    @values = @values - [value]
  end

  def union(set)
    self.class.new(@values + set.to_a)
  end

  def intersection(set)
    self.class.new @values.select{|v| set.include?(v)}
  end

  def difference(set)
    self.class.new @values.reject{|v| set.include?(v)}
  end

  def subset?(set)
    set.to_a.map{|v| @values.include?(v)}.all?
  end

  def each(&block)
    @values.each {|v| block.(v) }
  end

  def include?(value)
    @values.include?(value)
  end

  def to_a
    @values
  end

  def size
    @values.size
  end
end
