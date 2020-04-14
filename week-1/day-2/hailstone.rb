def hailstone(x)
    steps = 0
    until x==1
        puts "step #{steps} => #{x}"
        if(x%2 == 0)
            x /= 2          
        else
            x = (x*3)+1
        end
        steps += 1
    end
    puts "final step #{steps} => #{x}"
    steps
end

hailstone(3)