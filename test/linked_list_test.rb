require './lib/linked_list'

class LinkedListTest < MiniTest::Test
  def setup
    @list = LinkedList.new
  end

  def test_it_initializes_with_nil_head
    assert_nil @list.head
  end

  def test_it_can_append_node_to_list
    to_add = "next"
    added = @list.append(to_add)

    assert_equal to_add, added
    assert_equal Node, @list.head.class
    assert_equal to_add, @list.head.data
    assert_nil @list.head.next_node
  end

  def test_it_has_count_method
    @list.append("next")

    assert_equal 1, @list.count
  end

  def test_it_has_to_string_method
    @list.append("next")

    assert_equal "next", @list.to_string
  end

  def test_it_can_add_multiple_nodes
    @list.append("next")
    @list.append("then")

    assert_equal 2, @list.count
    assert_equal "next then", @list.to_string
    assert_equal "next", @list.head.data
    assert_equal "then", @list.head.next_node.data
    assert_nil @list.head.next_node.next_node
  end

  def test_it_can_prepend
    @list.append("next")
    @list.prepend("then")

    assert_equal "then next", @list.to_string
  end

  def test_it_can_insert
    @list.append("next")
    @list.append("then")
    @list.insert(1, "it")

    assert_equal  "next it then", @list.to_string
  end
end
