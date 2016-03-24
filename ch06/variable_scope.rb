# Global variable.
men_in_bar = 0

class Man
	# Class level variable
	@@number_of_men = 0
	
	def initialize(age)
		# Object level variable
		@age = age
	end
	
	def can_booze
		#Local variable
		minimum_drinking_age = 18
		
		if(@age > minimum_drinking_age)
			puts "Allowed to Booze!"
		else
			puts "Not allowed to Booze!"
		end
	end
end

man1 = Man.new(15)
man2 = Man.new(21)

man1.can_booze
man2.can_booze

