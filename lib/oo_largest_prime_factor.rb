# Enter your object-oriented solution here!

class LargestPrimeFactor

  def initialize(n)
    @n = n
    @largest_prime = nil
  end

  def is_prime?(f) 
    Math.sqrt(f).to_i.downto(2).each do |i| 
      return false if f % i == 0
    end
  end

  def number
    prime_factors = []
    @n.downto(2) do |f|
      if @n % f == 0 && is_prime?(f)
        prime_factors << f
      end
    end
    @largest_prime = prime_factors.max
  end

end