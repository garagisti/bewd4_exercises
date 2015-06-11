require 'Date'
require './person'
class Tenant < Person

  # This gives access to the varible - from outside of the object.
  attr_accessor :no_of_dependents, :occupation, :annual_income

  def initialize(name, gender, dob)
    @name = name
    @gender = gender
    @dob = dob
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