# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?


# Sieve of Eratosthenes
# ------------------------
# def sieve(limit)
# 	whole_array = (2..limit).to_a
# 	prime = whole_array.shift
# 	prime_array = [prime]

# 	until whole_array == []
# 		whole_array.delete_if { |num| num % prime == 0 }
# 		prime = whole_array.shift
# 		prime_array << prime
# 	end
# 	prime_array
# end



def prime_factors(num)
	return [] if num == 1
	first_factor = (2..num).find { |x| num % x == 0 }
	[first_factor] + prime_factors(num/first_factor)
end

def largest_prime_factor(num)
	prime_factors(num).last
end

p largest_prime_factor(13195)
p largest_prime_factor(600851475143) == 6857