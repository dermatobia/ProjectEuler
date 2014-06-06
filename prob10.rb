# ======= PROB 10 - Summation of primes ============

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# Get prime numbers using Eratosthenes Sieve method
def primes(num)
  whole_array = (2..num).to_a
  prime_array = [whole_array.shift]

  until whole_array == []
    whole_array.delete_if { |x| x % prime_array.last == 0 }
    prime_array << whole_array.shift
  end
  prime_array
end

def sum_primes(num)
  prime_array = primes(num)
  prime_array.reduce(:+)
end

p sum_primes(1_000_000)