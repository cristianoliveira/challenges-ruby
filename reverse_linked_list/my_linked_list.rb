class MyLinkedList
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end

  def to_a(node = self)
    return [node.value] unless node.next_node
    result = to_a(node.next_node)
    result.push(node.value)
    result
  end

  def revert(node = self)
    reverted = self::class.new(self.value)

    n_next = self.next_node
    while n_next
      reverted = self.class.new(n_next.value, reverted)
      n_next = n_next.next_node
    end

    reverted
  end

  def each(&block)
    node = self
    while node
      block.call(node.value)
      node = node.next_node
    end
  end

  def map(&block)
    result = []
    each do |value|
      val = block.call(value)
      result.push(val)
    end
    result
  end

  def filter(&block)
    result = []
    each do |value|
      selected = block.call(value)
      result.push(value) if selected
    end
    result
  end
end
