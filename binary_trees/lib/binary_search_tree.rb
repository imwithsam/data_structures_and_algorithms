class Node
  attr_accessor :data, :left, :right

  def initialize(data, left_node = nil, right_node = nil)
    @data = data
    @left = left_node
    @right = right_node
  end

end

class BinarySearchTree
  attr_accessor :root_node

  def push(data)
    new_node = Node.new(data)
    current_node = self.root_node

    # if root_node is empty, add a new node as the root node
    # otherwise, compare the root node to the root node's value
    #  and go left if <= data or right if > data
    while !current_node.nil?
      if new_node.data <= current_node.data
        current_node = current_node.left
      else
        current_node = current_node.right
      end
    end

    current_node = new_node
  end
end