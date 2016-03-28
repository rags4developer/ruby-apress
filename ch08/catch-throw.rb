=begin
Break statement only breaks out of the loop in which it occurs. Catch-throw is used to break out of all 
nested loops.

In the example below, we want to find just one candy. If we use break in the inner loop, the outer loop
will unnecessarily iterate even after we break out of the inner.
=end

floor = [["blank", "blank", "blank"],
         ["gummy", "blank", "blank"],
         ["blank", "blank", "blank"]]

candy = nil
catch(:found) do
	floor.each do |row|
		row.each do |tile|
			if tile == "gummy"
				candy = tile
				throw(:found)
			end
		end
	end
end
puts "found the candy: " + candy


