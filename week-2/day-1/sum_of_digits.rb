def digital_root(n)
    return 0 if n==0
    n > 9 ? n = n.to_s.split("").map{|x| x.to_i} : n
    n = n.reduce(:+)
    n > 9 ? digital_root(n) : n
  end