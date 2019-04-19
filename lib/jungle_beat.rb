require './lib/linked_list'

class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(string)
    start = 0
    space = string.index(" ")
    while space != nil
      @list.append(string[start..(space-1)])
      if space + 1 > string.length
        break
      end
      start = space +1
      space = string.index(" ", start)
    end
    @list.append(string[start..-1])
    return string
  end

  def count
    @list.count
  end

  def play
    command = "say -r 500 -v Boing #{@list.to_string}"
    `command`
  end
end
