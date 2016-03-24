
#Read the file line by line.
lines = File.readlines("text.txt") # An array of lines.

#Req 3 - Line count
line_count = lines.size;
text = lines.join

puts "#{line_count} lines"

#Req 1 - Character count
total_characters = text.length
puts "#{total_characters} characters"

#Req 2 - Character count (excluding spaces)
total_characters_nospaces = text.gsub(/\s+/, '').length #remove all series of 1 or more spaces in text.
