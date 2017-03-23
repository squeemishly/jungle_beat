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

  def test_it_links_node_to_list
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

  def test_add_a_node_to_the_beginning
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
  end

  def test_add_a_sound_in_the_middle
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_find_some_sounds
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "shi", list.find(2,1)
    assert_equal "woo shi shu", list.find(1,3)
  end

  def test_it_includes_a_value
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal true, list.includes?("deep")
    assert_equal false, list.includes?("dep")
  end

  def test_it_can_remove_the_last_element
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "blop", list.pop
    assert_equal "shu", list.pop
  end

end

