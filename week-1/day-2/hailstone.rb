def hailstone(x)
    steps = 0
    until x==1
        if(x%2 == 0)
            x /= 2
            steps += 1
        else
            x = (x*3)+1
            steps += 1
        end
    end
    steps
end

puts hailstone(3)