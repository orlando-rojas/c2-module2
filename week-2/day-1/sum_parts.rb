def parts_sums(ls)
    return [0] if ls.length < 1
    result = [ls.reduce(:+)]
    ls.map {|x| result << result.last - x}
    result
end