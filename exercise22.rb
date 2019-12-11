#!/usr/bin/env ruby

def anagram_check(first_word, second_word)
    if first_word.upcase.split("").sort() == second_word.upcase.split("").sort()
        puts "#{first_word} and #{second_word} are anagrams!"    
    else 
        puts "#{first_word} and #{second_word} are NOT anagrams!"
    end 

end 



puts "What is your first word?"
first_word = gets.chomp 

puts "What is your second word?"
second_word = gets.chomp

anagram_check(first_word, second_word)
