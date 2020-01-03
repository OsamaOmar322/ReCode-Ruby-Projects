# In Class Exercise: Binary Search
# Write a method, binary search(array, target), that accepts an array and another input as target
# The method should use the binary search algorithm to return the position of the element where the target is found

def binary_search(target, array)
	min = 0
	max = array.length-1
	
	while min <= max
		mid = (min + max)/2
		#print min, mid, max
		if target == array[mid]
			#print mid, target
			return mid 
		elsif target > array[mid]
			min = mid +1
		elsif target < array[mid]
			max = mid -1
		end
	end
	return -1
end

test_array = (100..200).to_a
puts binary_search(135, test_array) == 35

test_array = [13, 19, 24, 29, 32, 37, 43]
puts binary_search(35, test_array) == -1