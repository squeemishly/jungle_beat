require './lib/node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end
  
  def append(phrase)
    if head.nil?
      @head = Node.new(phrase)
      head.data
    else
      @head.tail.next_node = Node.new(phrase)
      phrase
    end
  end
  
  def count
    counter = 0
    current = head
    until current.nil?
      counter += 1
      current = current.next_node
    end
    counter
  end

  def to_string
    list = ""
    list << head.data
    current = head.next_node
    until current.nil?
      list << " " + current.data
      current = current.next_node
    end
    list
  end

  def prepend(data)
    current = Node.new(data, head)
    @head = current
  end

  def insert(position, data)    
    current = head
    position -= position
    position.times do
      current = current.next_node
    end

    new_node = Node.new(data, current.next_node)
    current.next_node = new_node
  end

  def find(starting_value, ending_value)
    current = head
    list = ""
    starting_value.times do
      current = current.next_node
    end
    ending_value.times do
      if list == ""
        list << current.data
      else
        list << " " + current.data
      end
      current = current.next_node
    end
    list
  end

  def includes?(word)
    if to_string.include?(word)
      true
    else
      false
    end
  end

  def pop
    temp = head.tail.data
    current = @head

    until current.next_node.next_node.nil?
      current = current.next_node
    end

    current.next_node = nil
    temp
  end

end
