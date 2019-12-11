#!/usr/bin/env ruby

def evens(original_list)

    even_list = []
    loop do
        item = original_list.pop
        
        if item % 2 == 0
            even_list.push(item)
        end 

        if original_list.count == 0
            return even_list
        end
    end 
end 


def is_prime(number)
    for i in 2..number/2 do
        if number % i  == 0
            return false
        end
    end
    return true
end


def primes(original_list)

    prime_list = []
    loop do
        item = original_list.pop
        
        if is_prime(item)
            prime_list.push(item)
        end


        if original_list.count == 0
            return prime_list
        end
    end 
end 



list = []
loop do 
    print "Please input a new number:"
    input = gets.chomp

    if input.upcase == "DONE"
        break 
    end 

    list.push(input.to_i)
end


print list
puts
puts "Highest Number = #{list.max}"
puts "Lowest Number = #{list.min}"
sum = list.inject(:+)
puts "Sum = #{sum}"
count = list.count
puts "Count= #{count}"
puts "Average= #{sum.to_f / count}"


puts "Even Numbers =  #{evens(list.dup)}"

puts "Prime Numbers =  #{primes(list.dup)}"

puts "Your Numbers Are =  #{list}"



