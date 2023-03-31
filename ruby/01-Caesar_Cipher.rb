print "Please, type/paste your text: "
original = gets.chomp

codes = Array.new()

original.each_char do |letter|
	codes.push(letter.codepoints[0] + 5)
end

codes.map do |code|
	print code.chr
end

=begin
	Change each letter of the string to one 5 in advance.

	It also change the spaces.
	doesn't wrap.
=end