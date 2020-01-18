def partition(array, num)
    smaller = []
    bigger = []
    for i in 0..array.length-1
        item = array[i]
        if item < num
            smaller << item
        else 
            bigger << item
        end  
    end 
    return [smaller, bigger]      
end 
#puts "#{partition([1,2,3,4,5,6,7,8,9,10], 5)}"



def merge(hash1, hash2)
    hash3 = hash1.merge(hash2)
    return hash3
end 
# a = {"a"=>10, "b"=>20}
# b = {"c"=>30, "b"=>7}
# puts merge(a,b)


def censor(sentence, arr_curses)
    input_array = sentence.split()
    output_array = []
    
    for i in 0..input_array.length-1
        item = input_array[i]
        
        if arr_curses.include?(item)
            item = item.gsub(/a|e|i|o|u/, "*")
        end
        output_array <<item 
    end 
    return output_array.join(' ')
end
# arr_curses = ['darn', 'gosh', 'bish']
# sentence = "hello dark darn bish gosh"
# puts censor(sentence, arr_curses)


def power_of_two?(num)
    if num.to_s(2).count('1') == 1
        return true
    else 
        return false 
    end 
end 
#puts power_of_two?(33)



def palindrome?(string)
    string = string.to_s
	if string.length == 1 or string.length == 0
		return true
	else
		return (string[0] == string[-1]) && palindrome?(string[1..-2])
	end 
end 
# a = "racecar"
# b = "omar"
# puts palindrome?(b)


def substrings(string)
    output = []
    input_array = string.split("")
    length = input_array.size
    (0..length-1).each do |i|
      (i..length-1).each do |j|
        output.push(input_array[i..j].join)
      end
    end
    output.uniq
end 
# a = "jump"
# puts "#{substrings(a)}"



def palindrome_substrings(string)
    output = []
    input_array = string.split("")
    length = input_array.size
    (0..length-1).each do |i|
      (i..length-1).each do |j|
        substring = input_array[i..j].join
        if substring.length > 1 
            if palindrome?(substring) == true
                output.push(substring)
            end
        end 
      end
    end
    output.uniq
end 
# a = "madam"
# puts "#{palindrome_substrings(a)}"




