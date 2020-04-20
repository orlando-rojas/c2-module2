begin
    def put_n(str,n)
        raise ArgumentError.new(
            "Second argument is not a positive Integer"
        ) if (!n.is_a? Integer) || (n < 0)
    
        i = 0
        while i<n
            puts str
            i += 1
        end
    end    

    print "What do you want to echo? "
    str = gets.chomp
    print "How many times do you want to repeat it? "
    n = Integer(gets.chomp)

    put_n(str,n)


rescue ArgumentError
    p "I don't understand how many times do you want to echo the string!"
    retry
end