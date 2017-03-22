require './lib/node'
require 'pry'

class LinkedList

  attr_accessor :head, :append
  def initialize
    @head       = nil
    @append     = 0
  end
  
  def append(phrase)
    if head.nil?
      @head = Node.new(phrase)
      head.data
    else
      @head.tail.next_node = Node.new(phrase)
      head.tail.next_node
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
    list << @head.data
    current = @head.next_node
    until current.nil?
      list << " " + current.data
      current = current.next_node
    end
    list
  end

end
