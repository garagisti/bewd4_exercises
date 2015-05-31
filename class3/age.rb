# Gets the users age from the STDIN and
# then converts to an integer
def get_user_age
  # chomp removes the end of line character
  user_input = gets.chomp
  user_input.to_i
end

# Tells us whether the person is betweem the ages
# of 13 and 19
def is_a_teenager(age)
  if age >= 13 && age <= 18
    true
  else
    false
  end
end

# Tells us if the person is 18 and over
def is_an_adult(age)
  if age >= 18
    true
  else
    false
  end
end

puts 'How old are you?'
years = get_user_age
if is_an_adult(years)
  puts 'Great, you are old enough'
elsif is_a_teenager(years)
  puts 'Please get your parents permission'
else
  puts 'Sorry, you are too young'
end
