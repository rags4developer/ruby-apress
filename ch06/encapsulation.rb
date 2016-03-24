class GoogleEmployee
		
	def initialize(age)
		@age = age
	end
	
	private
	# Only this person can change his/her own name !
	def set_name(name)
		@name = name
	end
		
	public
	def tell_name
		puts "My name is #{}"
	end
	
	# To be declared private or public at the end...
	def get_salary
		return @salary
	end
	
	def tell_age
		return @age
	end
	
	# Another way to declare privacy level of methods.
	private :get_salary
	public :tell_age
	
	def get_current_team
		return @current_team
	end

	protected :get_current_team # Only other GoogleEmployees can see this.

end

larry = GoogleEmployee.new("Larry Page")
