class Shape
end

class Square < Shape # Square class is a subclass or child of Shape class.
	
	# Initialize is the constructor which can create an instance of Square class, i.e. Square object.
	# You create a Square like this square_one = Square.new(4).
	def initialize(side_length)
		@side_length = side_length # @side_length - this is an Object scoped variable.
	end
	
	def area
		@side_length * @side_length # No return statement, but area method is actually returning the area.
	end
	
	def perimeter
		return @side_length * 4
	end
end

# We can create more shapes like Triangle < Shape if we want.

# Test the Square class.

# Square class instantiates itself. Then, it calls initialize(...) on the object.
my_square = Square.new(10)
puts my_square.perimeter
puts my_square.area

