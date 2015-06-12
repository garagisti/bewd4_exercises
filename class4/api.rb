require 'json'
require 'rest-client'
require 'byebug'

# The response is a string.
data = RestClient.get("http://bewd4-rails-class4.herokuapp.com/api/characters")

# This returns an array of hashes.
characters = JSON.parse(data)

# Exercise 1
# Print out all the names of the female characters

characters.each do |character|
	puts character['name'] if character['gender'] == 'female'
end

# Exercise 2
# Modify the original list of participants by separating the characters name
# into two fields so for example name: would be replaced by first_name: and last_name:
# i.e. { name: 'Alfred Pennyworth', gender: :male } becomes
# { first_name: 'Alfred', last_name: 'Pennyworth', gender: :male }
<<<<<<< HEAD

mod_characters = characters.map do |character|
	name = character['name']
	gender = character['gender']

	# One Way to do this is:
	# first_name = name.split.first
	# last_name = name.split.last

	# Another way to do this is:
	name_array = name.split
	first_name = name_array.first
	last_name = name_array.last

	# Return
	{first_name: first_name, last_name: last_name, gender: gender.to_sym}
end

puts mod_characters
# puts characters



# Exercise 3
# Calculate the number of male characters
# male_participant_count = ?
# You can't add 1 to 'nil'

male_participant_count = mod_characters.reduce(0) do |count, character|
 # count = count + 1 if character[:gender] == :male

 if character[:gender] == :male
 	count += 1
 else
 	count
 end
end

puts male_participant_count
