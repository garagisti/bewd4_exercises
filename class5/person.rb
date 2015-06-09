require 'date'

# A person is an applicant or tenant of our realty app.
class Person
  attr_accessor :name, :gender, :dob, :no_of_dependents,
                :annual_income, :occupation
  attr_accessor :addresses

  # A person should specify a name, gender and dob to be valid
  # This is also known as the invariant laws of the class
  def initialize(name, gender, date_of_birth)
    @addresses = []
    @name = name
    @gender = gender
    @dob = date_of_birth
  end

  # A dynamic attribute which calulates the age of the person.
  # This is a simple calculation with some known issues
  def age
    dob_dt = Date.parse(@dob)
    today = DateTime.now
    (today.mjd - dob_dt.mjd) / 365
  end

  # Tells us which income bracket in which a person is
  def income_tier
    if @annual_income.nil? || @annual_income < 100000
      'Tier 1'
    elsif @annual_income >= 100000 && @annual_income < 200000
      'Tier 2'
    else
      'Tier 3'
    end
  end
end
