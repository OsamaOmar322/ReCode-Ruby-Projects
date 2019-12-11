#!/usr/bin/env ruby

def reverse_array(input_array)
    new_array = []
    loop do 
        new_array.push(input_array.pop)
        if input_array.empty?
            break 
        end 
    end
    return new_array
end 


print reverse_array([1,2,3,4,5,6])
print "\n"
