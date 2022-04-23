def minimumLoss(price)
    if price[0] == price.min
      return price[0]
    end
    price = price.combination(2).select { |a,b|
      if (a-b).positive?
        (a-b).abs
      end
    }
    newArray = Array.new()
    price.each_with_index{|_, index| newArray.push(price[index][0] - price[index][1])}
    return newArray.min
end

print minimumLoss([5, 20, 3])
