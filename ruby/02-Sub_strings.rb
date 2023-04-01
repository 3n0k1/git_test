dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

=begin
print "type your text:"
yourText = gets.chomp
=end

def substrings(text, dictionary)
	result = Hash.new
	textArray = text.downcase.split(' ')
	textArray.each do |word|
		dictionary.each do |test|
			if word == test
				if result.has_key?(word)
					result[word] += 1
				else
					result[word] = 1
				end
			end
		end
	end
	print result
end

substrings("Howdy partner sit down partner", dictionary)