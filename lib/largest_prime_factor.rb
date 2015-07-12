require 'pry'
# Enter your procedural solution here!

#find all the factors
#find the prime factors
#find the largest


def is_prime?(f) 
  Math.sqrt(f).to_i.downto(2).each do |i| 
    return false if f % i == 0
  end
end

def largest_prime_factor(n)
  prime_factors = []
  n.downto(2) do |f|
    if n % f == 0 && is_prime?(f)
      prime_factors << f
    end
  end
  return prime_factors.max
end