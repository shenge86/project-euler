# Project Euler
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

# arrNums = [1, 2, 3, 4, 5]
arrNums1 = (0..999).step(3).to_a
arrNums2 = (0..999).step(5).to_a
# puts arrNums1
# puts arrNums2

arrNums = arrNums1 + arrNums2
puts "List of numbers below 1000 that are multiples of 3 or 5 are: "
arrNums = arrNums.sort.uniq
puts arrNums

arrSum = arrNums.inject(:+)
puts arrSum

puts "Its sum is %d." % arrSum
