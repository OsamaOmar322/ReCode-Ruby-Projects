#!/usr/bin/env ruby

def squares_of_evens(input_array)
    squares = []
    for position in 0..input_array.count-1 do 
        item = input_array[position]
        if item % 2 == 0 
            squares << item**2  
        end 
    end 
    return squares 
end 




square_list = squares_of_evens([-5, -2, 0, 1, 3, 4, 8])

puts "#{square_list}"