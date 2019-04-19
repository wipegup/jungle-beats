require './lib/node'
class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      end_node = @head
      while end_node.next_node != nil
        end_node = end_node.next_node
      end
      end_node.set_next( Node.new(data))
    end

    data
  end

  def prepend(data)
    @head = Node.new(data,@head)
  end

  def insert(position, data)
    if position <0 || position >count
      puts "Position out of range"
    end
    position -=1
    node = @head
    while position >0
      node = node.next_node
      position -=1
    end

    node.set_next( Node.new(data,node.next_node))
  end

  def count
    counter = 0
    end_node = @head
    while end_node != nil
      counter += 1
      end_node = end_node.next_node
    end

    return counter
  end

  def includes?(data)
    node = @head
    while node != nil
      return true if node.data == data
      node = node.next_node
    end
    return false
  end

  def find(start, qty)
    if start <0 || start+qty > count
      puts "Index out of range"
    end
    node = @head
    while start >0
      node = node.next_node
      start -= 1
    end

    list = LinkedList.new
    while qty >0
      list.append(node.data)
      qty -= 1
      node = node.next_node
    end
    list.to_string
  end

  def pop
    node = @head

    while node.next_node.next_node != nil
      node = node.next_node
    end

    to_return = node.next_node
    node.set_next(nil)
    to_return.data
  end

  def to_string
    string = ""
    end_node = @head
    while end_node != nil

      string += end_node.data
      if end_node.next_node != nil
        string += " "
      end

      end_node = end_node.next_node
    end
    string
  end

end
