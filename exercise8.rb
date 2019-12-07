puts "What is Your First Name?"
first_name = gets.chomp
puts "What is Your Last Name?"
last_name = gets.chomp
puts "What is your gender?"
gender = gets.chomp
puts "Hello, #{first_name} #{last_name}! How old are you?"
age = gets.chomp.to_i


if age <= 20 and gender.upcase == "MALE" 
    puts "You're such a young boy!"
end

if age >= 20 and age <= 40 and gender.upcase == "MALE" 
    puts "How's work, mister?"
end

if age >= 40 and gender.upcase == "MALE" 
    puts "Wow! I admire your experience, sir!"
end


if age <= 20 and gender.upcase == "FEMALE" 
    puts "You're such a young girl!"
end

if age >= 20 and age <= 40 and gender.upcase == "FEMALE" 
    puts "How's work, miss?"
end

if age >= 40 and gender.upcase == "FEMALE" 
    puts "Wow! I admire your experience, madam!"
end

if age % 2 == 0
    puts "Your age is an EVEN number!"
else 
    puts "Your age is an ODD number!"
end



year_born = 2019 - age


if year_born % 400 == 0 or year_born % 4 == 0 and year_born % 100 != 0
    puts "You were born in #{year_born}, Which is a Leap Year."
else
    puts "You were born in #{year_born}, Which is a Normal Year."
end



