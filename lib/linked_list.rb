require_relative './node'

class LinkedList
  attr_accessor :head, :count


  def initialize
    @head = nil
  end

  def nth_from_end(n)
    last_node = @head
    count = 0 
    i = 0

    if n < 1
      return nil
    end

    if last_node == nil
      return nil
    end

    while last_node.next_node != nil
      count = count + 1
      last_node = last_node.next_node
    end

    count = count + 1

    if n > count 
      return nil
    end

    last_node = @head

    while i < count - n 
      last_node = last_node.next_node
      i = i + 1
    end

    return last_node.value

    #go through list to the count - n number 

  end

end
