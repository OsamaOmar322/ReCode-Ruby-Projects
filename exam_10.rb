# You will write a method, deaf_grandma that takes in a String
# This returns a new sentence where every word is yelled.
# A yelled word is when each word is all uppercase followed by 2 exclamation marks (!!)

def deaf_grandma(sentence)
    uppercase_sentence = sentence.upcase 
    #array = sentence.split
    for i in 0..sentence.length
     uppercase_sentence.collect! { |element|
        (element) "#{element}!!"
     }   
    end 
end 

puts deaf_grandma("I have a bad feeling about this") == "I!! HAVE!! A!! BAD!! FEELING!! ABOUT!! THIS!!"

x = %w(hello there world)
x.collect! { |element|
  (element == "hello") ? "hi" : element
}
