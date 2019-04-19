class LinkedList

  def initialize
    @head = nil
  end

  def append(data)
    end_node = @head
    while end_node != nil
      end_node = end_node.next_node
    end
    end_node.set_next = Node.new(data)
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
  end
end
