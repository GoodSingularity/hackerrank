def bytes(n)
  (n.bit_length - 1).downto(0).map { |i| n[i] }.join
end

def inversion(n:)
  x = Math.log(n, 2).to_i
  m = 1 << x
  m = m | m - 1
  n = n ^ m
  return n
end

def flippingBits(n)
      print "Before inversion #{bytes(n)}\n"
      inversion = inversion(n: n)
      print "After inversion #{bytes(inversion)}\n"
      return inversion
end
flippingBits(123456)
