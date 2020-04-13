def find_frequency(sentence, word)
    sentence.downcase.split.count(word.downcase)
end

puts find_frequency("uno dos uno", "UNO")