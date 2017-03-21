require './lib/node'

class LinkedList
  attr_accessor :head, :next_node

  def initialize
    @head       = nil
    @next_node  = nil
  end
  
  def append(phrase)
    @head = Node.new(phrase)
    phrase
  end
  

end
