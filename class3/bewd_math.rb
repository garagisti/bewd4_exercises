
#Need to tell ruby where to load from ie including the path (unless it's in the same directory)

require './simple_math'

puts 'Welcome to our simple calculator'
puts 'Value of x: '
first_value = gets.chomp.to_i

puts 'Value of y: '
second_value = gets.chomp.to_i

puts "Sum of x and y is #{SimpleMath.add(first_value,second_value)}"
puts "Difference of x and y is #{SimpleMath.minus(first_value,second_value)}"
puts "Product of x and y is #{SimpleMath.multiply(first_value,second_value)}"
puts "Division of x by y is #{SimpleMath.divide(first_value,second_value)}"

