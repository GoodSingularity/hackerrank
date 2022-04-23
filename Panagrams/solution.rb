#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'pangrams' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def pangrams(text)
  text = text.downcase
  alphabet = [*('a'..'z'), " "]
  return alphabet.all? { |word| text.include?(word) } ? "pangram" : "not pangram"
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = pangrams s

fptr.write result
fptr.write "\n"

fptr.close()
