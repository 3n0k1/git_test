Unsorted = [5,8,3,9,6,7,2,1,4]

def bubble_sort(unsort)
	for i in 0...unsort.length
		if(unsort[i] > unsort[i+1])
			x = unsort[i]
			unsort[i] = unsort[i+1]
			unsort[i+1] = x
		end
	end
end