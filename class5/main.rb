require './person'
require './address'

person1 = Person.new('Selina Kyle', 'Female', '03-08-1981')
person1.no_of_dependents = 1
person1.occupation = 'Hero'
person1.annual_income = 25000.0

person1.addresses << Address.new(:street)
person1.addresses.first.street1 = '120 Wycombe Rd'
person1.addresses.first.street2 = ''
person1.addresses.first.suburb = 'Neutral Bay'
person1.addresses.first.state = 'NSW'
person1.addresses.first.post_code = 2089
person1.addresses.first.country = 'Australia'

person1.addresses << Address.new(:mailing)
person1.addresses.last.street1 = 'P.O.Box 000'
person1.addresses.last.street2 = ''
person1.addresses.last.suburb = 'Neutral Bay'
person1.addresses.last.state = 'NSW'
person1.addresses.last.post_code = 2089
person1.addresses.last.country = 'Australia'

person2 = Person.new('Harper Row', 'Male', '21-03-1983')
person2.no_of_dependents = 0
person2.occupation = 'Hero'

puts "Person 1 details: #{person1.name} #{person1.dob}"
puts "Person 1 street address: #{person1.addresses[0].street1}"
puts "Person 1 mailing address: #{person1.addresses[1].street1}"
puts "Person 1 age: #{person1.age}"
puts "Person 1 income tier: #{person1.income_tier}"

puts "Person 2 details: #{person2.name} #{person2.dob}"
puts "Person 2 age: #{person2.age}"
puts "Person 2 income tier: #{person2.income_tier}"