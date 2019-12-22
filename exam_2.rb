# You will write a method reverse(word) that takes in a String
# The method returns the word with its letters in reverse order
# You may not use the String#reverse or String#reverse! method

def reverse(word)
    input_array = word.split("")
    output_array = []
    loop do 
        last = input_array.pop
        output_array << last
        if input_array.empty?
            break
        end 
    end   
    output = output_array.join
    return output
end

puts reverse("cat") == "tac"
puts

puts reverse("programming") == "gnimmargorp"
puts

puts reverse("bootcamp") == "pmactoob"
puts

