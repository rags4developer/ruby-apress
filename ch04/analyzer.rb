
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
puts "#{total_characters_nospaces} characters(excluding spaces)"

#Req 4 - Word count
# Use split instead of scan. Why ? Scan will consider words like First-class as two words instead of one.
word_count = text.split.length # By default, split will split on space char. So, no need to specify
puts "#{word_count} words"

#Req 5 - Sentence count
# A sentence generally ends with . ? or !
sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"

#Req 6 - Paragraph count
# Generally, a paragraph ends with two newline characters.
paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

# Req 7 - Average number of words per sentence
puts "#{word_count/sentence_count} words per sentence (average)"

# Req 8 - Average number of sentences per paragraph
puts "#{sentence_count/paragraph_count} sentences per paragraph (average)"


