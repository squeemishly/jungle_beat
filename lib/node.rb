class Node
  attr_accessor :data
  attr_reader :next_node

  def initialize(data, next_node = nil)
    @data      = data
    @next_node = next_node
  end

end