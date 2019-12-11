#!/usr/bin/env ruby
def unique_char(input_sentence)
    character_count = {}
    input_sentence = input_sentence.upcase
    loop_limit = input_sentence.length-1
    for i in 0..loop_limit do 
        character =  input_sentence[i]
        if character == " " 
            character = "|space|"
        end 
        if character_count.has_key?(character)
            character_count[character] = character_count[character] +1
        else 
            character_count[character] = 1
        end 
    end
    return character_count 
end





puts "Please write your sentence:"
input_sentence = gets.chomp 



result = unique_char(input_sentence)
keys = result.keys.sort

for i in 0..keys.length-1
    key = keys[i]
    puts "#{key} - #{result[key]}"
end 
