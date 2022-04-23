def xorBinary(xBytes:, yBytes:)
  return xBytes ^ yBytes
end

i = 0
numbers = []
while i < 2
    number = gets.chomp.to_i
    numbers.append(number)
    i = i + 1
end
print "#{xorBinary(xBytes: numbers[0], yBytes: numbers[1])}\n"
