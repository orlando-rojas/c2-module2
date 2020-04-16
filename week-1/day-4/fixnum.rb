def array_of_fixnums?(array)
    for i in array
        if (!i.is_a? Integer)
            return false
        end
    end
    true
  end

  puts array_of_fixnums?([1,2,3])