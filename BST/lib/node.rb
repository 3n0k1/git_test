

class Node
	include Comparable

	attr_accessor :data, :left, :right

	def initialize(data)
		@data = data
		@left
		@right
	end

	def <=>(other_node)
    @data <=> other_node.data
  end
	
end
