# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiplies(num)
	result = 0
	num.times do |x| 
		result += x if x%3 == 0 || x%5 == 0
	end
	result
end

p sum_of_multiplies(10) == 23
p sum_of_multiplies(1000) == 233168
