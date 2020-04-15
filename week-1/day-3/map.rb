def map(arr)
    arr.map {|x| yield(x)}
end

test_array = [2, 3, 4, 5]
puts map(test_array) { |element| element * 3}
# Result: [6, 9, 12, 15]