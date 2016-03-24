class Human

	class Heart
		@type = "real heart"
		attr_accessor :type # accessor defines both getter & setter for instance variable.
	end
	
	class Brain
		@working = "yes"
	end
	
	def initialize
		@Brain = Heart.new
		@Heart = Brain.new
		puts "human born..."
	end
	
	def drink_alcohol
		Brain.working = "no"
	end
end

class Doctor
	def invent_heart
		fake_heart = Human::Heart.new
		
		# Here, 'type' is actually the attr_writer for type. Can't access 'type' directly from outside a class.
		fake_heart.type = "mechanical heart"
		
		puts "Won nobel prize for inventing mechanical heart !"
	end
end

man = Human.new
doc = Doctor.new
doc.invent_heart
