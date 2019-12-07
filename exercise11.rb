def valid_number(input)
    valid_chars = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '+']
    for i in 0..input.length-1
        if not valid_chars.include? input[i..i]
            return false
        end          
    end
    return true
end


def countdown(number)
    puts "Counting Down"
    counter = number
    while counter >= 0 do
        puts "#{counter}"
        counter = counter -1
        sleep(0.3)
    end 
end


def countup(number)
    puts "Counting Up"
    counter = number
    while counter <= 0 do
        puts "#{counter}"
        counter = counter +1
        sleep(0.3)
    end 
end

puts "What is your number?"
input = gets.chomp
if valid_number(input)
    number = input.to_i
    if number >= 0 
        countdown(number)
    else
        countup(number)
    end
else 
    puts "INVALID NUMBER!"
end