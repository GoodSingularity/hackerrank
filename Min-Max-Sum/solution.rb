#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
    arr = arr.sort
    length = arr.size
    min, max = arr[0..length-2].inject(:+),  arr[1..length-1].inject(:+)
    print("#{min} #{max}")
    return
end

arr = gets.rstrip.split.map(&:to_i)

print miniMaxSum arr
