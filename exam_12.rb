# You will write a method, caesar_cipher that takes a String
# The method will shift the characters by an Integer factor and then output the modified String
# For example, caesar_cipher("a", 5) -> "f"
# (a is the first alphabet (1). Add 5, so the value is now 6. f is the 6th alphabet.)
# Remember that lowercase and uppercase characters have different values

def caesar_cipher(string, shift_factor)
    output = ""
    string.scan (/./) do |i|
        if ("a".."z").include? (i.downcase)
            shift_factor.times {i = i.next}
        end
        output << i[-1]
    end
    return output
end

print caesar_cipher("What a string!", 5) == "Bmfy f xywnsl!"
puts