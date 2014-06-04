# ======= PROB 8 - Special Pythagorean triplet ============

# A Pythagorean triplet is a set of three natural 
# numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for 
# which a + b + c = 1000. Find the product abc.


include Math

def pythagorean
  triplet = []
  (3..1000).each do |a|
    (4..1000).each do |be|
      if be > a
        ce = Math.sqrt( sq(a) + sq(be) )
        if ce > be
          return triplet = [a, be, ce] if special_triplet?(a, be, ce)
        end # end of ce > be
      end # end of if be > a
    end # end of B loop
  end # end of A loop
  "not found"
end

def special_triplet?(a, b, c)
  a + b + c == 1000
end

def sq(num)
  num*num
end

def find_abc_prod
  arr = pythagorean  # ==> [200, 375, 425.0]
  arr.reduce(:*)
end

p find_abc_prod # ==> 31875000

# ====================================
#       REFLECTION
# ====================================

# I have to say, I quite enjoy doing this problem. 