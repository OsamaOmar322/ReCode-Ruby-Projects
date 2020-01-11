# Palindrome: Recursion
# Write a method, is_palindrome?, that accepts a number
# The method should use recursion to check if a number provided is a palindrome
# The method should return true or false
# You can create additional nested methods


def is_palindrome?(n)
	n = n.to_s
	if n.length == 1 or n.length == 0
		return true
	else
		return (n[0] == n[-1]) && is_palindrome?(n[1..-2])
	end
end

puts is_palindrome?(88) == true
puts is_palindrome?(12321) == true
puts is_palindrome?(7992) == false
puts is_palindrome?(7227) == true
