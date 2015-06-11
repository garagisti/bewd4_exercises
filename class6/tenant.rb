require 'Date'
class Tenant

  # This gives access to the varible - from outside of the object.
  attr_accessor :name, :gender, :dob
  attr_accessor :no_of_dependents, :occupation, :annual_income

  def initialize(name, gender, dob)
    @name = name
    @gender = gender
    @dob = dob
  end

  # This is an instance method if it was Self.age then it would be a class method
  # And if it was a class method @dob wouldn't work as its not in 'scope'.
  def age
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

  def income_tier

  if @annual_income.nil? || @annual_income < 100000
    'Tier 1!'

  elsif @annual_income >= 100000 && @annual_income < 200000
    'Tier 2!'
  elsif @annual_income >= 200000
    'Tier 3!'
  else
    'error - did not fit into a tier'
  end

  end



end