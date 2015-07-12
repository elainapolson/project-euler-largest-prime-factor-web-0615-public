# Enter your object-oriented solution here!

class LargestPrimeFactor

  def initialize(n)
    @n = n
  end

  def is_prime?(f) 
    Math.sqrt(f).to_i.downto(2).each do |i| 
      return false if f % i == 0
    end
  end

  def number
    Math.sqrt(@n).to_i.downto(2).find do |f|
      (@n % f == 0) && is_prime?(f)
    end
  end 
end