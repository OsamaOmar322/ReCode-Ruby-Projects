#!/usr/bin/env ruby

def nth_power_of_evens(input_array, power)
    powers = []
    for position in 0..input_array.count-1 do 
        item = input_array[position]
        if item % 2 == 0 
            powers << item**power  
        end 
    end 
    return powers  
end 




power_list = nth_power_of_evens([-5, -2, 0, 1, 3, 4, 8], 3)

puts "#{power_list}"