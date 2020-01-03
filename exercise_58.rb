# Write a method, compress_string(string), that accepts a string as input
# The method should return a new string where streaks of consecutive characters are compressed to a number followed by the character.
# For example "aaabbc" is compressed to "3a2bc".

# Write Your method code here

def compress_string(string)
    input_array = string.split("")
    prev = input_array[0]
    count = 1
    output_array = []
    for i in 1..input_array.length-1
        if input_array[i] == prev 
            count += 1
        else
            if count != 1 
                output_array << count
            end
            output_array << prev
            prev = input_array[i]
            count = 1
        end 
    end
    if count != 1 
        output_array << count
    end 
    output_array << prev
    return output_array.join
end 

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, string, expected)
    actual = compress_string(string)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1,"aaabbc", "3a2bc")
    check_solution(2, "xxyyyyzz", "2x4y2z")
    check_solution(3, "qqqqq", "5q")
    check_solution(4, "mississippi", "mi2si2si2pi")
end

# Execute the tests.
run_tests()