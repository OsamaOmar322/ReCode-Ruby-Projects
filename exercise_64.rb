# Number Patterns: Recursion
# Given a number n, make an array of a list of numbers without using any loop.
# The sequence of numbers should be from the number n, reduced by 5 each print, to 0 or the first negative number, and then increased by 5 each print, back up to the number n.
# For example, if the number n is 20, it would return:
# [20, 15, 10, 5, 0, 5, 10, 15, 20]
# You have to use recursion in this problem
# You have to determine what are the arguments required for make_pattern
# You can create additional nested methods if you need to

def make_pattern(n)
	if n <= 0 
		 return [n]
	else 
		return [n] + make_pattern(n-5) + [n]
	end
end 


puts make_pattern(20) == [20, 15, 10, 5, 0, 5, 10, 15, 20]
puts make_pattern(17) == [17, 12, 7, 2, -3, 2, 7, 12, 17]
puts make_pattern(3) == [3, -2, 3]
puts make_pattern(0) == [0]