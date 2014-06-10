# ======= PROB 10 - Summation of primes ============

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.


require 'Prime'

def primes(num)
  arr = []
  Prime.each(num) do |prime|
    arr << prime  
  end
  arr
end

def sum(num)
  primes(num).reduce(:+)
end

p sum(2_000_000) # ==> 142913828922

# ====================================
#       REFLECTION
# ====================================

# I 'cheated' by using ruby's built-in prime library. My first
# attempt (using Eratosthenes Sieve) was taking too long. It worked
# for smaller number at hundreds of thousands, but took too long 
# when it hits a million. 

# I will have to revisit this prob and attempt it again without using
# prime library.