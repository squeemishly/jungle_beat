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
    list.append("doop")
    assert_nil list.head.next_node
  end

  def test_sound_is_stored_in_head
    list = LinkedList.new
    list.append("doop")
    assert_equal list.head.data, "doop"
  end

  def test_links_node_to_list
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    refute_equal nil, list.head.next_node
  end

  def test_count_of_list
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_return_of_string
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_count_counts_multiple_sounds
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal 2, list.count
  end

  def test_add_more_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end

end

