require 'minitest/autorun'
require 'minitest/pride'
require "./lib/node"

class NodeTest < Minitest::Test
  def test_that_it_exists
    node = Node.new("plop")
    assert_instance_of Node, node
  end
  
  def test_data_can_be_added
    node = Node.new("plop")
    assert_equal node.data, "plop"
  end

  def test_data_can_be_anything
    node = Node.new("stuff")
    assert_equal node.data, "stuff"
  end

  def test_next_node_is_nil
    node = Node.new("plop")
    assert_nil node.next_node
  end

end