# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each do |add|
  	sum = sum + add
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  empty = 0
  arr = arr.sort
  if arr == []
  	return empty
  elsif arr.length == 1
  	return arr[0]
  else
	  max_sum = (arr[-1]) + (arr[-2])
	  return max_sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 || arr.length == 1
  	return false
  else
  	arr.combination(2).any? {|a, b| a + b == n }
  end  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  name = name.to_s
  hello = "Hello, " + name
  return hello
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  arr = ["A", "E", "I", "O", "U"]
  first = s.to_s[0].upcase
  if arr.include? first
    return false
  end
  if first =~ /[[:alpha:]]/
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if not(s.is_a? Integer) and !(s =~ /\A[-+]?[0-9]+\z/)
    return false
  end
  s = s.to_i
  if s%4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
	def initialize (isbn, price)
		raise ArgumentError if isbn.empty? || price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		"$%.2f" % @price
	end
end
