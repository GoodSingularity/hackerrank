def inversion(n:)
      # ^ = bitwise XOR
  return n ^ 4294967295
end

def flippingBits(n)
      inversion = inversion(n: n)
      return inversion
end
numbers = []
size = gets.chomp.to_i
i = 0
while i < size
    number = gets.chomp.to_i
    numbers.append(number)
    i = i + 1
end

for number in numbers
    print "#{flippingBits(number)}\n"
end


#def bytes(n)
#  (n.bit_length - 1).downto(0).map { |i| n[i] }.join
#end

#def inversion(n:)
#  x = Math.log(n, 2).to_i
#  m = 1 << x
#  m = m | m - 1
#  n = n ^ m
#  return n
#end

#def flippingBits(n)
#      print "Before inversion #{bytes(n)}\n"
#      inversion = inversion(n: n)
#      print "After inversion #{bytes(inversion)}\n"
#      return inversion
#end
#flippingBits(123456)
