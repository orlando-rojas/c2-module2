def is_palindrome(sentence)
    sentence.delete! " "
    if(sentence == sentence.reverse)
        return true
    end
    return false
end

puts is_palindrome("anita lava la tina")