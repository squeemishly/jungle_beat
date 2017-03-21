require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_it_has_a_head
    list = LinkedList.new
    assert_nil list.head
  end
  
  def test_it_doops
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_head_is_a_node
    list = LinkedList.new
    list.append("doop")
    assert_instance_of Node, list.head
  end

  def test_next_node_is_nil
    list = LinkedList.new
    assert_nil list.head.next_node
  end
end

