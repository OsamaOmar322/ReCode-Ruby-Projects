# You will write two methods:

# You will write a method is_prime? that takes in a number
# This method returns a boolean, indicating whether the number is prime. 
# Note: A prime number is only divisible by 1 and itself.

# The method pick_primes that takes in an array of numbers
# The method should return a new array containing only the prime numbers
# The method pick_primes should use the method is_prime?

def is_prime?(num)
    for i in 2..num/2 do
        if num % i  == 0
            return false
        end
    end
    return true
end


def pick_primes(array)
    prime_array = []

    array.each |is_prime?(i)| do 
        if true  
            return true
        else 
            return false 
        end  
    end 
end

print pick_primes([2, 3, 4, 5, 6]) == [2, 3, 5]
puts

print pick_primes([101, 20, 103, 2017]) == [101, 103, 2017]
puts