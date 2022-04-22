#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    timeOfTheDay = s[-2..-1]
    if timeOfTheDay.eql?("PM")
        if s[0..1].eql?("12")
            return s[0..-3]
        else
            hour = s[0..1].to_i
            hour = hour + 12
            return hour.to_s + s[2..-3]
        end
    else
        if s[0..1].eql?("12")
            hour = "00"
            return hour + s[2..-3]
        else
            return s[0..-3]
        end
    end

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()
