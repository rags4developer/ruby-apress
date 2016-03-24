class Pie
	Pi = :a_dessert # A constant.
	attr_reader :Pi
end

Pi = 3.14
puts "This is pi: #{Pi}"
puts "This is also pi: #{Pie::Pi}"

