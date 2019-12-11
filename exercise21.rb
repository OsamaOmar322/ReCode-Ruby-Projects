#!/usr/bin/env ruby




def romanize(number)
    
    pairs = [
        ["I", 1], 
        ["IV", 4], 
        ["V", 5], 
        ["IX", 9], 
        ["X", 10], 
        ["XL", 40], 
        ["L", 50], 
        ["XC", 90], 
        ["C", 100], 
        ["CD", 400], 
        ["D", 500], 
        ["CM", 900], 
        ["M", 1000]
      ]

    roman = ""
    loop do 
        pair = pairs.pop
        
        letter = pair[0]
        step = pair[1]

        times = number / step
        roman = roman + letter * times
        number = number % step 

        if pairs.empty?
            break 
        end     
    end
    return roman
end 

number = gets.chomp.to_i
puts "#{romanize(number)}"



