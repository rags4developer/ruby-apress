=begin
	Exceptions such as ZeroDivisionError, NoMemoryError etc. are packed inside the class Exception.
	
	When an exception is "raised" in the currently running function, ruby looks at the "stack" of routines/functions and checks if the functions preceeding the current one have a routine/code
	to handle that exception.
=end

# Raise an exception manually

class Person
	def initialize(name)
		raise ArgumentError, "No name present" if name.empty?
	end
end

# Handle an exception

begin
	# Code that might cause exceptions goes here
	puts 10/0
rescue ZeroDivisionError => errorObject # => errorObject is optional. Its has details of the error thrown.
	# Code that should handle said exception. If no error mentioned beside it, then it handles all exceptions.
	puts "You caused an error! The error is of type: "
	puts errorObject.class
rescue BadArgumentError
	# Don't really need this for this example.
end
