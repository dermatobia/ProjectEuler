# ======= PROB 5 - Sum square difference ============

# The sum of the squares of the first ten natural numbers is,

# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first 
# ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first 
# one hundred natural numbers and the square of the sum.

def sum_of_squares(limit)
	sum = 0
	(1..limit).each do |n|
		sum += n * n
	end
	sum
end

def square_of_sum(limit)
	sum = 0
	(1..limit).each do |n|
		sum += n 
	end
	sum * sum
end

def difference(num)
	square_of_sum(num) - sum_of_squares(num)
end

p difference(100) # ==> 25164150