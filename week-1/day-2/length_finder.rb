def length_finder(input_array)
    length_array = Array.new
    input_array.each do |x|
        length_array.push(x.length)
    end
    length_array
end

puts length_finder(['Ruby','Rails','C42'])
#return [4,5,3]