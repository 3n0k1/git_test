arr1 = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]

class Tree
	attr_accessor :root

	def initialize(arr)
		@arr
		@root = built_tree(arr)
	end

	def built_tree(arr)
		@arr = arr.sort.uniq
		p @arr.inspect
		
		root_inx = @arr.length/2
		root_node = @arr[root_inx]
		
		return root_node
	end

	def insert
		p @arr.inspect
	end

	def delete(value)

	end


end