class Person #singularity not plurality in naming classes

# This gives access to the varible - from outside of the object.
  attr_accessor :name, :gender, :dob

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

end