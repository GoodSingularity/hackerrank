def staircase(n)
    for i in 1..n
      foo = " " * (n-i)+"#"*i
      print("#{foo}\n")
    end
end

staircase(6)
