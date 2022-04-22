#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
    length = arr.size
    @positive = 0.0
    @negative = 0.0
    @zero = 0.0
    arr.each{|element|
            if element.positive?
                @positive = @positive +1.0
            elsif element.negative?
                @negative = @negative +1.0
            else
                @zero = @zero + 1.0
            end
    }
    result = [@positive, @negative, @zero].map{|element| element.fdiv(length)}
    puts result
    return result
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr
