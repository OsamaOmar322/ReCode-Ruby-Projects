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

def analyze_digits(result)
    zeros = "00000000000000000000000000000000000000000000000000000000000000000"
    result = result.to_i.to_s
    limit = result.length-1
    puts
    for i in 0..limit
        puts "The number in the 1#{zeros[0,limit-i]}th place is #{result[i..i]}"
    end
    puts
end



puts "Welcome to the Ruby Calculator!"
puts "Can I have the first number?"
first_number = gets.chomp.to_f
puts "Can I have the second number?"
second_number = gets.chomp.to_f
puts "Operation? (+ * - /)"
operation = gets.chomp

if operation == "+"
    result = addition(first_number, second_number)
    puts "Your numbers are summed up to #{result}."
    analyze_digits(result)
end

if operation == "-"
    result = subtraction(first_number, second_number)
    puts "Your result is #{result}."
    analyze_digits(result)
end

if operation == "*"
    result = multiplication(first_number, second_number)
    puts "Your result is #{result}."
    analyze_digits(result)
end

if operation == "/" 
    remainder = division_remainder(first_number, second_number)
    if remainder == 0
        result = integer_division(first_number, second_number)
        puts "Your result is #{result}."
        analyze_digits(result)
    else 
        result = integer_division(first_number, second_number)
        puts "Your result is #{result} with a remainder of #{result}."
        analyze_digits(result)
    end 
end

