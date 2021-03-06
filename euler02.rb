# Project Euler
# Problem 2
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed 1000, find the sum of the even-valued terms.

fibonacciArr = Array.new

# define simple fibonacci method
def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
end

# puts fibonacci( 10 )

# define fibonacci method outputting array
def fib(n)
  n.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
end

# output only odd numbers in array
fibOutput = fib(1000).delete_if &:odd?
fibOutput = fibOutput.inject(:+)
puts "Sum of Fibonacci sequence below 1000 is %d." % fibOutput