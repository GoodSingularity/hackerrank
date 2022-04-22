def square_of_sum (my_array, proc_square, proc_sum)
    sum = process(my_array, proc_sum)
    process(sum, proc_square)
end

def process(x, proc)
    proc.call(x)
end
my_array = gets.split().map(&:to_i)

procSquare = proc {|x| x**2}
procSum = proc {|x| x.inject(:+)}

puts square_of_sum(my_array, procSquare, procSum)
