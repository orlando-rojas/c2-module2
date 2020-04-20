def my_languages(results)
    r = []
    results.sort_by {|x,y| -y}.map do |x,y|
        r<<x if y>= 60
    end
    r
end