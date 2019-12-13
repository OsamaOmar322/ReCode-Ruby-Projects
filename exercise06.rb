def exponent(number, power)
    return number**power
end


puts"What is your number?"
number = gets.chomp.to_f
puts "To the power of?"
power = gets.chomp.to_f

puts "Your result is #{exponent(number, power)}"
