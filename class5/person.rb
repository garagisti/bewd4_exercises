require 'date'
class Person

# (attr_accessor) This is a function, but think of it as a key word.
# This is used to specify your classes
# Attribute names must always be symbols
# This is called Exposition
# is an object an implementend class?

attr_accessor :name, :gender, :dob, :no_of_dependents,
              :annual_income, :occupation

# These two attr_accessors provide the 'Relationship' between
# The person Class and the address class. ie A person has 2 addresses
# attr_accessor :street_address, :mailing_address
attr_accessor :addresses

# This is what ruby calls when you say *.new
# This is the constructor of the class - automatic invocation when the class is created
# @ = instance scope

def initialize(name, gender, dob)
  # this creates an addresses array whenever a Person object is created
  @addresses = []
  @name = name
  @gender = gender
  @dob = dob
end

# An instance method you need an object to call the method.
# IF this method was a class method then it would need the Self. prefix.


# Class methods have a self. prefix. can also contain methods - called an instance method
# Returns a person's age
def age_from_dob

  # Convert the String date input, to a date time format to use in the method.
  # Add an instance scope ie. @dob
  # Which ever object that's been created ie as a Person, will have access to this method, so
  # person = Person.new
  # person.age_from_dob - this will now work!
  dob_dt = DateTime.parse(@dob)

  # Today's date
  today = DateTime.now

  # This rounds down to the nearest whole no.
  (today.mjd - dob_dt.mjd)/365

end


# Object Attributes have instance scope
# Accesseed via @instance variable

def income_tier

  if @annual_income.nil? || @annual_income < 100000
    'Tier 1!'
  # elsif annual_income.between(100000, 200000)
  elsif @annual_income >= 100000 && @annual_income < 200000
    'Tier 2!'
  elsif @annual_income >= 200000
    'Tier 3!'
  else
    'error - did not fit into a tier'
  end
end
end
