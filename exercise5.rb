def addition(first_number, second_number)  
    return first_number + second_number     
end

def subtraction(first_number, second_number)  
    return first_number - second_number
end

def multiplication(first_number, second_number)  
    return first_number * second_number
end

def integer_division(first_number, second_number)  
    result= first_number / second_number
    return result.to_i 
end

def division_remainder(first_number, second_number)  
    return first_number % second_number
end



puts "Welcome to the Ruby Calculator!"
puts "Can I have the first number?"
first_number = gets.chomp.to_f
puts "Can I have the second number?"
second_number = gets.chomp.to_f
puts "Cool! The two numbers added up is #{addition(first_number, second_number)}" 
puts "#{first_number} - #{second_number} will result in #{subtraction(first_number, second_number)}"
puts "Multiplying #{first_number} and #{second_number} will be #{multiplication(first_number, second_number)}"
puts "Finally, #{first_number} divided by #{second_number} is #{integer_division(first_number, second_number)} with a balance of #{division_remainder(first_number, second_number)}"
puts "GoodBye! :)" 
