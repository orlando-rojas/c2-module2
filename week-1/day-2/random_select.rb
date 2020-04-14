def random_select(array, n)
    random_array = []
    n.times do 
        random_array.push(array[rand(array.length)])
    end
    random_array
end

puts random_select([1, 2, 3, 4, 5],2)