#!/usr/bin/env ruby



def convert_to_hash(data_arr)
   keys = data_arr[0]
   data = data_arr[1..data_arr.length-1]
    converted = []
    loop do 
        data_set = data.shift 
        hash = {}
        for i in 0..keys.length-1 
            
            key = keys[i]
            value = data_set[i]
            hash[key] = value 
        end 
        converted.push(hash)
        if  data.empty?
            break
        end     
    end 
    return converted 
end





data_arr = [
    ["Name", "Position", "Age", "Salary"],
    ["Adrian Lim", "Salesperson", "24", "RM2000"],
    ["John Smith", "Clerk", "31", "RM2300"],
    ["Shafie Abdullah", "Manager", "27", "RM3000"]
  ]


  puts "#{convert_to_hash(data_arr)}"