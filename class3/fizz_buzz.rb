# Standard Fizz Buzz Approach

# (1..100).each { |x|

# 	if x%3 == 0 && x%5 == 0 
# 	puts 'fizz-buzz'
# 	elsif x%3 == 0 
# 		puts 'buzz'
# 	elsif x%5 == 0
# 		puts 'fizz'
# 	else
# 		puts "#{x}"
# 	end

# }


# Alternate Ruby method:

(1..100).each { |x|

	if x % 3 == 0 && x % 5 == 0
		puts "Fizz-Buzz #{x}"
	else
		puts "Fizz: #{x}" if x % 3 == 0
		puts "Buzz: #{x}" if x % 5 == 0
	end
}