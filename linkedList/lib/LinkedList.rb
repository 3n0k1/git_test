require_relative 'Node'

class LinkedList
	def initialize
		@head = Node.new
		@tail
	end

	def append(value) #adds a new node containing value to the end of the list
		new_node = Node.new(value)
	
		if @head.next_node.nil?
			@head.next_node = new_node
		else
			current_node = @head
			while !current_node.next_node.nil?
				current_node = current_node.next_node
			end
			current_node.next_node = new_node
		end
	end

	def prepend(value) #adds a new node containing value to the start of the list
		new_node = Node.new(value)
		new_node.next_node = @head
    @head = new_node

	end

	def size #returns the total number of nodes in the list
		number_of_nodes = 1
		current_node = @head

		until current_node.next_node.nil?
			current_node = current_node.next_node
			number_of_nodes += 1
		end

		return number_of_nodes
	end


	def head #returns the first node in the list
	end
	def tail #returns the last node in the list
	end
	def at(index) #returns the node at the given index
	end
	def pop #removes the last element from the list
	end
	def contains?(value) #returns true if the passed in value is in the list and otherwise returns false.
	end
	def find(value) #returns the index of the node containing value, or nil if not found.
	end
	def to_s #represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
	end



	def display
		current_node = @head
		while current_node.next_node != nil
			print "#{current_node.value} -> "
			current_node = current_node.next_node
		end
		puts "#{current_node.value} -> nil"
	end
end