#Write a method that takes a string and returns a hash with the count of each of unique words of the sentence. 
#Unique word count is case insensitive

def count_words(string)
    hash = Hash.new
    str = string.downcase.split
    hash = str.to_h { |x| [x, str.count(x)] }
end

puts count_words("cake cake caKe I like cake very much please gIve me cake I need the cake i need it")