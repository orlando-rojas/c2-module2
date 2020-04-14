def sum_of_cubes(a, b)
    result = 0
    while a<=b
        result = (a**3) + result
        a +=1
    end
    result
end

puts sum_of_cubes(1,3)