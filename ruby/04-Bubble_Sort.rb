Unsorted = [5,8,3,9,6,7,2,1,4]

def bubble_sort(unsort)
	sorted = false
	while sorted == false do
		sorted = true
		for i in 0...unsort.length-1
			if(unsort[i] > unsort[i+1])
				x = unsort[i]
				unsort[i] = unsort[i+1]
				unsort[i+1] = x	
				sorted = false
			end
		end

	end
	print unsort
end

bubble_sort(Unsorted)