=begin
A regex is a search query to be performed on a string.
=end

def pl
	20.times { print '-' }
	puts ""
end

# String substitution: 
	# sub method replaces only first occurrence of the search string.
		# simple
		puts "foobar".sub('bar', 'star')
		pl()

		# complex
		x = "this is nice"
			#replace 1st two char with hello. ^ is start of lines within a string & one dot means any one char.
		puts x.sub(/^../, 'Hello')
		pl()

	# gsub method replaces ALL occurrences of the search string
	puts "this is nice".gsub('i', 'I')
	pl()

# Iteration with a Regexp
	# scan method can iterate over a string, matching one pattern/regexp at a time.
	puts "hi dude!".scan(/../) #print two chars at a time.
	pl()
	
# More examples for special characters within regular expressions.
	# . means Any character as shown in above examples.
	
	# \d means Any digit. Below regexp matches only 1 digit.
	"1a23b4c".scan(/\d/) do |x|
		puts x
	end
	pl()

# Regexp modifiers - Quick way to specify how many characters to match at a time.
	# Plus or + means match one or more of the preceding char, & match as many as possible.
	"Pie 123$ & Cream 150$".scan(/\d+/) do |x|
		puts x
	end
	pl()

	"Pie 123$, Cream 150$".scan(/\d{2}/) do |x|
		puts x
	end
	pl()

# Regexp character classes
	"this is a test".scan(/[aeiou]/) {|x| print x + ', '}
	puts ""
	pl()
	
# The =~ matching operator. It returns the position of the first match (if any)
	pos = "This is a test" =~ /[aeiou]/
	puts "String has vowels" if pos
	pl()

# The match method. It provides the parts of the string which match the regexp. 
	x = "This is a test".match(/(\w+) (\w+)/) #an array of matched parts
	puts x
	pl()

# Refer to the book for more info and examples !!!

