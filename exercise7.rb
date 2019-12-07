


puts "What is you number?"
number = gets.chomp.to_i
if number >= 0 and number <= 50 
    puts "Number between 0 and 50"
end

if number > 50 and number <= 100
    puts "Number between 51 and 100"
end

if number > 100
    puts "Number more than 100"
end
