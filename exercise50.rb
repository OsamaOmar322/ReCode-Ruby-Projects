# Based on your code for Exercise 10, create a Day Organiser

# First, ask for a time as a single input string in military time (e.g. “16:30”) or standard time (e.g. 04:30PM)
# Then, ask for the activity that will be happening during that time as a string
# Ask the user if that is the last activity they would like to input (Y/N)
# If it’s the last activity, then, list out in order of the day, the activity of the day, together with the time in standard time.
# e.g. Your output should be:
# Your activities today are:
# 04:30AM - Wake up, eat breakfast
# 05:30AM - Go to the gym
# 08:00AM - Head for Recode Class

schedule = {}

loop do 
  puts "Time?"
  time = gets.chomp 
  if not time.match(/am|pm|AM|PM/)
    hours = time[0..1].to_i
    minutes = time[3..4]
    
      if hours > 12
          time = format("%02d",hours-12) + ":#{minutes}PM"
      else  
          time =  format("%02d",hours) + ":#{minutes}AM"
      end
  end 
  puts "Activity?"
  activity = gets.chomp 

  schedule[time] = activity

  puts "Is this your last activity?"
  y_n = gets.chomp
  if y_n.upcase == "Y"
    break 
  end 
end 


puts "Your activities today are:"
times =  schedule.keys.sort
times.each do |time|
  puts "#{time} - #{schedule[time]}"
end 






