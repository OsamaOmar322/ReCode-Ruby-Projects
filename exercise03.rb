puts "What is your number?"
the_number = gets.chomp.to_i
puts "The number in the thousandth place is : #{the_number / 1000}"  if the_number >= 1000
puts "The number in the hundredth place is : #{the_number / 100 % 10}" if the_number >= 100
puts "The number in the tens place is : #{the_number / 10 % 10}" if the_number >= 10
puts "The number in the ones place is : #{the_number / 1 % 10}"
