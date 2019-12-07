

puts "Welcome!"
sleep 1 
puts "What is your name?"
user_name = gets.chomp 
guesses = 1
puts "Hello #{user_name}!"
sleep 2
puts "I am going to think of a number between 1 and 1000"
sleep 2
puts "Hmmm..."
secret_number = rand(1..1000) 
sleep 1 
puts "Got it! Now try to guess the number"

loop do 
    puts "Try to guess the number."
    answer = gets.chomp.to_i
    if answer == secret_number
        puts "You guessed it #{user_name}! The answer was #{secret_number}. It took you #{guesses} guesses."
        break 
    else
        if answer > secret_number
            guesses = guesses + 1
            puts "Your answer is too COLDER!"
            sleep 1
            puts "Try again."
        
        else  
            guesses = guesses + 1
            puts "Your answer is too HOTTER!"
            sleep 1
            puts "Try again."
        end 

    end
end 