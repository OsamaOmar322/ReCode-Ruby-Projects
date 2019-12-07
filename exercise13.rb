puts "Triangle Size?"
input_number = gets.chomp.to_i

puts "Symbol?"
symbol = gets.chomp

if  symbol == ""
    symbol = "="
end 

puts "DRAWING TRIANGLE"


line = ""
for i in 1..input_number do 
    line = line + symbol
    puts line
end 

