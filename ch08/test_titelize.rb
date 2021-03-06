
=begin
Ruby allows us to add a method to existing Ruby classes or even redefine existing methods. This is called "monkey patching", i.e. re-opening any class and changing it's methods. 

We want to add a method "titelize" to String class which will capitalize the first alphbet of each
word in a string. Lets develop this code with the TDD method, using Test::Unit. 

=end

class String
	def titelize
		# (\A|\s) lets us pick the first word of a string OR| words separated by spaces. Then,
		# \w gets the first letter of the fetched word.
		self.gsub(/(\A|\s)\w/) {|letter| letter.upcase}
	end
end


# First, write all the tests that you want this class method to pass.
require 'test/unit'

class TestTitelize < Test::Unit::TestCase
	def test_basic
		assert_equal("This Is A Test", "this is a test".titelize)
		assert_equal("Another Test 1234", "another test 1234".titelize)
		assert_equal("We're Testing", "We're testing".titelize)
	end
end
