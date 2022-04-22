# Enter your code here. Read input from STDIN. Print output to STDOUT
n = $stdin.read
n = n.to_i
def is_prime?(n)
  2.upto(Math.sqrt(n).round()).each do |x|
    return false if n % x == 0
  end
  true
end

def is_palindrome?(n)
  n.to_s == n.to_s.reverse
end

def palindromic_primes(n)
   2.upto(Float::INFINITY).lazy.map { |x| x if (is_palindrome?(x) && is_prime?(x))}.select { |x| x.is_a? Integer}.first(n)
end

puts palindromic_primes(n).inspect
