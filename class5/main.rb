
require './person' #The file name not the class name
require './address'

person1 = Person.new('Selina Kyle', 'Female','03-08-1981')

person1.no_of_dependents = 1
person1.occupation = 'Hero'
person1.annual_income = 25000.00

person2 = Person.new('Harper Row', 'Male', '21-03-1983')

person2.no_of_dependents = 0
person2.occupation = 'Hero'
# person2.annual_income = nil # Don't need to set this - nil is explicit if unset.

puts "Person1 details: #{person1.name} Dob: #{person1.dob}"
puts "Person2 details: #{person2.name} Dob: #{person2.dob}"


person1.addresses <<  Address.new
person1.addresses.first.street1 = '120 Wycombe Rd'
person1.addresses.first.street2 =  ''
person1.addresses.first.suburb = 'Neutral Bay'
person1.addresses.first.state = 'NSW'
person1.addresses.first.post_code = 2089
person1.addresses.first.country = 'Australia'
person1.addresses.first.address_type= :street

person1.addresses << Address.new
person1.addresses.last.street1 = '120 Wycombe Rd'
person1.addresses.last.street2 =  ''
person1.addresses.last.suburb = 'Neutral Bay'
person1.addresses.last.state = 'NSW'
person1.addresses.last.post_code = 2089
person1.addresses.last.country = 'Australia'
person1.addresses.last.address_type= :mailing

# p1_street_address.street1 = '120 Wycombe Rd'
# p1_street_address.street2 =  ''
# p1_street_address.suburb = 'Neutral Bay'
# p1_street_address.state = 'NSW'
# p1_street_address.post_code = 2089
# p1_street_address.country = 'Australia'
# p1_street_address.address_type= :street
# # p1_street_address.person_id = 1
# person1.street_address = p1_street_address

# p1_mailing_address = Address.new
# p1_mailing_address.street1 = '120 Wycombe Rd'
# p1_mailing_address.street2 =  ''
# p1_mailing_address.suburb = 'Neutral Bay'
# p1_mailing_address.state = 'NSW'
# p1_mailing_address.post_code = 2089
# p1_mailing_address.country = 'Australia'
# p1_mailing_address.address_type= :mailing
# # p1_mailing_address.person_id = 1
# person1.mailing_address = p1_mailing_address

# Alternatively you can do this:
# Because the person class now has the attr_accessor for street & mailing address
person2.addresses << Address.new
person2.addresses.first.street1 = '42 Military Road'
person2.addresses.first.street2 =  ''
person2.addresses.first.suburb = 'Neutral Bay'
person2.addresses.first.state = 'NSW'
person2.addresses.first.post_code = 2089
person2.addresses.first.country = 'Australia'
person2.addresses.first.address_type= :street
# person2.addresses.first.person_id = 2

# Create a new ordinal position in the array of an Address object
person2.addresses << Address.new
person2.addresses.last.street1 = 'P.O.Box 666'
person2.addresses.last.street2 =  ''
person2.addresses.last.suburb = 'Neutral Bay'
person2.addresses.last.state = 'NSW'
person2.addresses.last.post_code = 2089
person2.addresses.last.country = 'Australia'
person2.addresses.last.address_type = :mailing
# person2.addresses.last.person_id = 2


puts "Person1 details: #{person1.addresses[0].street1} Suburb: #{person1.addresses[0].suburb}"
puts "Person2 details: #{person2.addresses[0].street1} Suburb: #{person2.addresses[0].suburb}"
puts "Person2 address #{person2.addresses[0].street1}"
puts "Person2 address #{person2.addresses[1].street1}"
puts "Person2 Age: #{person2.age_from_dob}"
puts "Person2 Income Tier: #{person2.income_tier}"
puts "Person1 Income Tier: #{person1.income_tier}"