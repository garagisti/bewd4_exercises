# Gets the user's age from Std.io
# Then converts to an integer.
def get_user_age	
	# Chomp removes the end of the line character
	user_input = gets.chomp
	user_input.to_i
end

# Tells us if the user is an adult. 
def is_an_adult(age)
if age >= 18
	true
else
	false
end
end


# Tells us whether the person is between the ages of 13 and 19
def is_a_teenager(age)

if age >= 13 && age <= 18
	true
else
	false
end
end


puts 'Hi there,'
puts 'Enter your age: '
years = get_user_age
puts "Is an Adult result: #{is_an_adult(years)}" 
puts "Is a Teenager result: #{is_a_teenager(years)}"

