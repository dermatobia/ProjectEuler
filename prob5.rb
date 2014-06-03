# ======= PROB 5 - Smallest multiple ============

# 2520 is the smallest number that can be divided by each 
# of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?


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

# Finding the smallest multiple
def minimum(limit)
	prime_arr = primes(limit)
	prod = 1
	multiples = 1
	prod_below_limit = 1

	prime_arr.each do |prime|
		prod = 1
		while prod < limit
			prod *= prime
			prod_below_limit = prod if prod < limit
		end
		multiples *= prod_below_limit
	end
	multiples
end

p minimum(20) # ===> 232792560



# ====================================
#  			REFLECTION
# ====================================

# When I first read it, I didn't immediately get the problem. I actually
# misunderstood it, thinking that the number -must- be divided by each 
# numbers of 1 to 10 -consecutively-. Since the question didn't make any 
# sense to me, I started googling for more detailed explanation. That 
# brought me to this site, and the last post by Martin Neal cleared my 
# initial confusion.

# -----------------------------------------
# 		http://codereview.stackexchange.com/questions/13086/problem-5-on-project-euler

# 		Multiplying all the numbers together from 1->10 gives you 3628800 which 
# 		is indeed divisible by the numbers 1->10, but it is not the minimum number. 
# 		Ask yourself why? take the last number 10 for instance. Do we really need 
# 		to multiply 10 into our answer 10, when we know that our number already has 
# 		a factor of 2 and a factor of 5?

# 		Consider the prime factors of the numbers 1->10

# 		What's the most number of 2's you need to create any of 
# 			the values 1->10...? 3 (8=2^3)
# 		What's the most number of 3's? 2 (9=3^2)
# 		What's the most number of 5's? 1 (5)
# 		What's the most number of 7's? 1 (7)
# 		Thus, the answer for the minimum number that is a multiple 
# 			of 1->10, is 2^3*3^2*5*7 = 2520.
# -----------------------------------------

# This bit helped me understand the problem. So I decided to solve it 
# using this algorithm. 
