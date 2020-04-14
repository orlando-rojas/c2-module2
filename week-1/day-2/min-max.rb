def max(arr)
    max = arr[0]
    arr.each do |x|
        x > max ? max=x : next
    end
    max
end

def min(arr)
    min = arr[0]
    arr.each do |x|
        x < min ? min=x : next
    end
    min
end

numbers = [2, 56, 5, 3, 4, 6, 1, -3456, 123891, 454, 1, 23, 5, 7]

puts min(numbers)
puts max(numbers)