
# This module performs simple maths operations
module SimpleMath

	# This method adds two numbers and returns the
	# sum of the two numbers
	def self.add(x,y)
	  # TODO: Complete implementation
	 	x + y
	end

	# This method calculates the difference of two numbers
	# and returns the difference of the two numbers
	def self.minus(x,y)

	 	x - y

	end

	# This method calculates the product of two numbers
	# and returns the product of the two numbers
	def self.multiply(x,y)

	  x * y

	end

	# This method calculates the division of two numbers
	# and returns the division of the two numbers
	def self.divide(x,y)

		# This is a GUARD!!
	    x / y if y!= 0

	end
end