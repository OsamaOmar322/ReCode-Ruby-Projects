# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, many_vowel_words, that accepts a sentence as a String
# The method should return a new sentence containing only the words that contain two or more vowels.

require "byebug"

def many_vowel_words(sentence)
    words = sentence.split(" ")

    new_words = []
    for i in 0..words.length-1
        word = words[i]
        if num_vowels(word) >= 2 
            new_words << word
        end 
    end

    return new_words.join(" ")
end

def num_vowels(word)
    count = 0
    word.each_char do |char|
        count += 1 if "aeiou".include?(char)
    end
    count
end
# a = "The Missippi river is quite the river"
# p many_vowel_words(a)