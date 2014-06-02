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
