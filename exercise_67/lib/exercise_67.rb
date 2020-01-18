def average(num1, num2)
    return (num1 + num2) / 2
end 
# puts average(2,2)


def average_array(array)
    div_by = array.count 
    sum = array.inject(0){|sum,x| sum + x }
    return sum / div_by
end
a = [2,5]
#puts average_array(a)



def repeat(string, num)
    return "#{string * num}"
end 
a = "recode"
#puts repeat(a,2)


def yell(string)
    caps = string.upcase 
    return "#{caps}!"
end 
a = "crap"
#puts yell(a)


def alternating_case(sentence)
    input_array = sentence.split(" ")
    
    for i in 0..input_array.length-1
        if i % 2 == 0
            input_array[i] = input_array[i].upcase
        else
            input_array[i] = input_array[i].downcase
        end 
    end
    return input_array.join(" ")
end 

# a = "i want to die haha"
# puts alternating_case(a)


def hipsterfy(word)
    input_array_reversed = word.split("").reverse 
    output_array = []
    for i in 0..input_array_reversed.length-1
        if input_array_reversed[i].match(/a|e|i|o|u/)
            input_array_reversed.delete(input_array_reversed[i])
            break
        end 
    end   
    return input_array_reversed.reverse.join
end

# a = "omar"
# puts hipsterfy(a)


def vowel_count(str)
    vowels = %w(a e o u i)
    hash = vowels.each_with_object({}) {|vowel, hash| hash[vowel] = str.count(vowel) }
    hash.delete_if { |key, value| value.to_s.strip == '0' }
    return hash
end 

# a = "aeiou"
# puts vowel_count(a)


def caesar_cipher(string, n)
    output = ""
    string.scan (/./) do |i|
        if ("a".."z").include? (i.downcase)
            n.times {i = i.next}
        end
        output << i[-1]
    end
    return output
end 

# a = "iwantto2121"
# puts caesar_cipher(a,5)