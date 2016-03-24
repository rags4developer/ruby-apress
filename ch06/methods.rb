class Dog
	
	@@dog_class_info = "Dog is man's best friend."
	
	def initialize(breed)
		@breed = breed
	end
	
	#Object method.
	def bark
		puts "#{@breed} barking! #{@@dog_class_info}"
	end
	
	#Class method
	def self.dog_is? # It is the same as saying Dog.dog_is?
		puts @@dog_class_info
	end
end

Dog.dog_is?
doggy = Dog.new("Pitbull")
doggy.bark

