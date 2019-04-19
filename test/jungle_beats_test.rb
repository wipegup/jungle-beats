require './lib/jungle_beat'

class LinkedListTest < MiniTest::Test
  def setup
    @jb = JungleBeat.new
  end

  def test_initialized_with_empty_list
    assert_instance_of LinkedList, @jb.list.class
    assert_nil @jb.list.head
  end

  def test_it_can_add_multiple_at_one_time
    @jb.append("this it that")

    assert_equal 3, @jb.count
    assert_equal "this", @jb.list.head.data
  end

end
