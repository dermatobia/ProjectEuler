# Largest palindrome product
# A palindromic number reads the same both ways. The largest palindrome 
# made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome
	larger = 0
	smaller = 0
		999.downto(100) do |num1|
			999.downto(100) do |num2|
				prod = num1 * num2
				if palindrome?(prod)

					if larger < prod
						# puts "in larger < prod, num1 = #{num1}, num2 = #{num2}, prod = #{prod}"
						smaller = larger
						larger = prod

					# having this elsif above larger > prod improves speed because it doesn't have to go all the way down to num1 = 0	
					elsif smaller > prod 		
						# puts "in smaller > prod"
						return larger 
							
					elsif larger > prod 		# having this to break out of inner loop improves speed
						# puts "in larger > prod, num1 = #{num1}, num2 = #{num2}, prod = #{prod}"
						break # break out from inner downto loop of num2
					end

				end # end of if palindrome?
			end # end of num2 downto loop
		end # end of num1 downto loop
	larger
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
