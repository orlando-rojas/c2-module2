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

put_n("This will be printed 5 times!", 5)