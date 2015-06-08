require 'json'
require 'rest-client'
require 'byebug'

data = RestClient.get("http://bewd4-rails-class4.herokuapp.com/api/characters")
characters = JSON.parse(data)

# Exercise 1
# Print out all the names of the female characters
characters.each do |character|
  puts character['name'] if character['gender'] == 'female'
end

# byebug

# Exercise 2
# Modify the original list of participants by separating the characters name
# into two fields so for example name: would be replaced by first_name: and last_name:
# i.e. { name: 'Alfred Pennyworth', gender: :male } becomes
# { first_name: 'Alfred', last_name: 'Pennyworth', gender: :male }
mod_characters = characters.map do |character|
  name        = character['name']
  gender      = character['gender']
  first_name  = name.split.first
  last_name   = name.split.last
  { first_name: first_name, last_name: last_name, gender: gender.to_sym }
end

# puts mod_characters
# puts characters

# Exercise 3
# Calculate the number of male characters
male_participant_count = mod_characters.reduce(0) do |count, character|
  if character[:gender] == :male
    count = count + 1
  else
    count
  end
end

puts male_participant_count