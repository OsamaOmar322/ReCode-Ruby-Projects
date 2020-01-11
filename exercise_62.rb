# Prime Numbers: Recursion
# Write a method, is_prime?
# You have to determine what are the arguments required for is_prime
# The method should be used to determine if a number is a prime number recursively.

def is_prime?(n, i = 2)
	if (n == 2)
		return false
	end
	if(n < 2) 
		return true
	end

	if (n % i == 0)
		return false
	end 
	if (i * i > n)
		return true
	end  
	return is_prime?(n, i + 1) 
end





puts is_prime?(17) == true
puts is_prime?(15) == false
puts is_prime?(41) == true