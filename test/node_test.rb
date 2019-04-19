require './test/test_helper'
require './lib/node'

class NodeTest < MiniTest::Test
  def setup
    @plop_node  = Node.new("plop")
  end

  def test_node_has_data
    assert_equal "plop", @plop_node.data
  end

  def test_node_initializes_with_nil_for_next_node
    assert_nil @plop_node.next_node
  end
end
