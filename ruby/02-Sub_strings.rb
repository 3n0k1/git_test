dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print "type your text:"
yourText = gets.chomp

def substrings(text, dictionary)
	textArray = text.split(' ')
	textArray.each do |word|
		dictionary.each do |test|
			if word == test
				print word
			end
		end
	end

end

substrings("Howdy partner sit", dictionary)