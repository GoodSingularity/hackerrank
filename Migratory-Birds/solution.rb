#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'migratoryBirds' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def migratoryBirds(arr)
    # Write your code here
    arr = arr.sort
    data = arr.each_with_object(Hash.new(0)) { |element,counts| counts[element] += 1 }
    data.key(data.values.max)

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr_count = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = migratoryBirds arr

fptr.write result
fptr.write "\n"

fptr.close()
