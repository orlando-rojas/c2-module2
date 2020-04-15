def each(arr)
   arr.each do |x|
    yield(x)
   end
end

test_array = [2, 3, 4, 5]
each(test_array) { |element| puts "Number is #{element}"}