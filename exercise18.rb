#!/usr/bin/env ruby

def better_reverse(input_array)
    length = input_array.count
    for i in 0..length/2 do 
        third_cup = input_array[i]
        input_array[i] = input_array[length-1-i]
        input_array[length-1-i] = third_cup
    end
    return input_array
end 


print better_reverse([1,2,3,4,5,6,7])
print "\n"
