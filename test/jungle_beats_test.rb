require './lib/jungle_beat'

class LinkedListTest < MiniTest::Test
  def setup
    @jb = JungleBeat.new
  end

  def test_initialized_with_empty_list
    assert_instance_of LinkedList, @jb.list.class
    expect_nil @jb.list.head
  end

  def test_it_can_add_multiple_at_one_time
    @jb.append("this it that")

    expect_equal 3, @jb.count
    expect_equal "this", @jb.list.head.data
  end

end
