#!/usr/bin/env ruby


input_array = [1,2,3,4,5,6,7,8,9]

def shuffler(input_array)
    shuffled_array = []
    
    loop do 
        last = input_array.pop
        if rand(2) == 0 
            shuffled_array = shuffled_array + [last]
        else 
            shuffled_array = [last] + shuffled_array 
        end
        if input_array.empty?
            break 
        end     
    end
    return shuffled_array 
end 

puts "#{input_array}" 
puts "#{shuffler(input_array)}"



