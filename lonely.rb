def lonelyinteger(a)
    res = {}
    for i in a
        if !res.key?(i)
          res[i] = (a.count(i))
        end
    end
    return res.select{|key, value| value.eql?(1)}.keys

end

puts lonelyinteger([1,2,2,3])
