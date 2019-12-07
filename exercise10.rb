puts "What is the time now? (In Military Time)"
input_time = gets.chomp
hours = input_time[0..1].to_i
minutes = input_time[2..3].to_i

if hours > 12
    puts "#{input_time} in military time is #{hours - 12}:#{minutes} PM"
else  
    puts "#{input_time} in military time is #{hours}:#{minutes} AM"
end 