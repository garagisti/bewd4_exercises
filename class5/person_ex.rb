require 'date'

# Exercise 1
# Model 2 people using a hash, these two people
# have the following attributes
# person1 -> name: 'Selina Kyle', gender: 'Female', dob: '03-08-1981'
# person2 -> name: 'Harper Row', gender: 'Male', dob: '21-03-1983'
person1 = { name: 'Selina Kyle',
            gender: 'Female',
            dob: '03-08-1981'
          }
person2 = { name: 'Harper Row', gender: 'Male', dob: '21-03-1983' }


# Exercise 2
# Add the following attributes to our 2 people
# person 1 -> no_of_dependents: 1, occupation: 'Hero', annual_income: 25000.00
# person 2 -> no_of_dependents: 0, occupation: 'Hero', annual_income: nil
person1[:no_of_dependents] = 1
person1[:occupation] = 'Hero'
person1[:annual_income] = 25000.0

person2[:no_of_dependents] = 0
person2[:occupation] = 'Hero'
person2[:annual_income] = nil

# Demo 5
# Add a dynamic value which calculates the age of either person
def age_from_dob(dob)
  dob_dt = Date.parse(dob)
  today = DateTime.now
  (today.mjd - dob_dt.mjd) / 365
end

puts 'Person 1 properties'
puts person1
puts age_from_dob(person1[:dob])

puts 'Person 2 properties'
puts person2
puts age_from_dob(person2[:dob])

# Exercise 6
# Add a dynamic value which categorises the person as tier 1, 2 or 3 as per the following rules
# < 100k annual income -> Tier 1
# >= 100k and < 200k -> Tier 2
# >= 200k -> Tier 3
def income_tier(annual_income)
  if annual_income.nil? || annual_income < 100000
    'Tier 1'
  elsif annual_income >= 100000 && annual_income < 200000
    'Tier 2'
  else
    'Tier 3'
  end
end

puts "Person 1 income tier: #{income_tier(person1[:annual_income])}"
puts "Person 2 income tier: #{income_tier(person2[:annual_income])}"
