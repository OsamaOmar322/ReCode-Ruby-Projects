puts "Square Size?"
input_number = gets.chomp.to_i

puts "Symbol?"
symbol = gets.chomp

if  symbol == ""
    symbol = "="
end 


top_bottom = ""
for i in 1..input_number do 
    top_bottom = top_bottom + symbol + " "
end 


middle = symbol + " "
for i in 1..input_number - 2 do 
    middle = middle + "  "
end
middle = middle + symbol + " "


puts top_bottom
for i in 1..input_number - 2
    puts middle
end  
puts top_bottom