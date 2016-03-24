class Person
	def initialize(name)
		@name = name
	end
	
	def name
		return @name
	end
	
end

class Doctor < Person
	def initialize(name, degree)
		@degree = degree
		super(name) # Calling parent constructor.
	end
	
	def name
		return "Doctor " + super # Calling parent method.
 	end
	
end

man1 = Person.new("James")
doc1 = Doctor.new("Troy", "MD")

puts "I am " + man1.name
puts "I am " + doc1.name


