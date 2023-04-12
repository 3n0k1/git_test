arr1 = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]

class Tree
	attr_accessor :root

	def initialize(arr)
		@root = built_tree(arr)
	end

	def built_tree(arr)
		arr = arr.sort.uniq
		p arr.inspect

		if arr.lenght % 2 = 0
			p 'even'
		else
			p 'odd'
		end
		
	end
end