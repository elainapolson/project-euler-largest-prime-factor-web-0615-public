require 'pry'
# Enter your procedural solution here!

#find all the factors
#find the prime factors
#find the largest


def is_prime?(n) 
  Math.sqrt(n).to_i.downto(2).each do |i| 
    return false if n % i == 0
  end
end

def largest_prime_factor(num)
  Math.sqrt(num).to_i.downto(2).find do |f|
    (num % f == 0) && is_prime?(f)
  end
end 
