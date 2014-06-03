# ======= PROB 7 - 10001st prime ============
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
# we can see that the 6th prime is 13.

# What is the 10 001st prime number?


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


a = primes(150_000)
p a.length
p a[10000] # ==> 104743



# ====================================
#  			REFLECTION
# ====================================

# This is not the most elegant solution to find the answer. 
# I guess I could have used the Prime library to create a single
# line solution, but I feel like that's cheating :p 

# However, this is kinda 'cheating' too, ha, because I am 
# making an approximation where the 10_001st prime is. Also,
# I am re-using my Eratosthenes Sieve code from previous prob.

# http://en.wikipedia.org/wiki/Prime_number_theorem

# I will have to revisit this to optimize it.