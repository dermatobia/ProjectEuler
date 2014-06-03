# Largest palindrome product
# A palindromic number reads the same both ways. The largest palindrome 
# made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome
	largest = 0
	smaller = 0
		999.downto(100) do |num1|
			999.downto(100) do |num2|
				prod = num1 * num2
				if palindrome?(prod)

					if largest < prod
						# puts "in largest < prod, num1 = #{num1}, num2 = #{num2}, prod = #{prod}"
						smaller = largest
						largest = prod

					# Having this elsif above largest > prod improves speed because 
					# 	it doesn't have to go all the way down to num1 == 100
					# However, assumption is made that there isn't any other prod at lower num2 that is
					# 	larger than 'smaller'
					elsif smaller > prod 		
						# puts "in smaller > prod"
						return largest 
							
					elsif largest > prod 		# having this to break out of inner loop improves speed
						# puts "in largest > prod, num1 = #{num1}, num2 = #{num2}, prod = #{prod}"
						break # break out from inner downto loop of num2
					end

				end # end of if palindrome?
			end # end of num2 downto loop
		end # end of num1 downto loop
	largest
end # end of def

def palindrome?(obj)
	str = obj.to_s
	pos1 = 0
	pos2 = str.length - 1
	pal = true
	while pos1 <= pos2 && pal == true
		pal = str[pos1] == str[pos2] 
		pos1 += 1
		pos2 -= 1
	end
	pal
end

p largest_palindrome 	# 993 * 913 = 906609


# ====================================
#  			REFLECTION
# ====================================

# When I was solving this problem, I had a personal dilemma of whether or not I 
# should use built in methods in Ruby to solve the problem. 

# As much as I love Ruby for the ease of use and the many built-in methods to 
# sort, or reverse, or split, etc, should I use them? Like, should I use 
# Prime library to get my prime numbers, or should I do it 'manually' by 
# writing my own Eratosthenes Sieve? Sometimes I feel that I am being spoilt 
# by these shortcuts. After all, I am doing these problems for personal 
# improvement.

# I guess, for the time being, I will try to refrain myself from using them,
# as much as I could in simpler problems.





