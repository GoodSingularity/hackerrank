#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'towerBreakers' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER m
#

def towerBreakers(n, m)
    if m == 1
        return 2
    else
        return z = n%2 == 1 ? 1 :  2
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.strip.to_i

t.times do |t_itr|
    first_multiple_input = gets.rstrip.split

    n = first_multiple_input[0].to_i

    m = first_multiple_input[1].to_i

    result = towerBreakers n, m

    fptr.write result
    fptr.write "\n"
end

fptr.close()
