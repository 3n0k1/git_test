dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

=begin
print "type your text:"
yourText = gets.chomp
=end

def substrings(text, dictionary)
	textArray = text.downcase.split(' ')
	textArray.each do |word|
		dictionary.each do |test|
			if word == test
				puts word
			end
		end
	end

end

substrings("Howdy partner sit", dictionary)