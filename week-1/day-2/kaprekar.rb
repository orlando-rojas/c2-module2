def kaprekar?(k)
    kstr = k.to_s.size
    square = (k ** 2).to_s
    
    if square.size % 2 == 0
        left = square[0..kstr-1]
    else
        left = square[0..kstr-2]
    end

    right = square[-kstr..-1]

    if(k == left.to_i + right.to_i)
        return true
    end

    return false

  end

  puts kaprekar?(9)