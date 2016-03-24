=begin Polymorphism - Many forms of one thing. They have some common characteristics. 
Example Cats, Dogs, Ants etc. are different forms of animals. Cats, Dogs, Whales etc.
in also different forms of Mammals.
=end

class Animal
	attr_accessor :name # This is like a method to get the name of an animal
end

# Notice the different forms of the method "move".

class Dog
	def move
		puts "walking on 4 legs..."
	end
end

class Ants
	def move
		puts "crawling on 6 legs..."
	end
end


