def palindrome?(str)
	my = str.downcase.scan(/\w+/).join
	my.eql?(my.reverse)
end

def count_words(str)
	words = str.split(/[^a-zA-Z]/)
	freqs = Hash.new(0)
	words.each { |word| freqs[word.downcase] +=1}
	freqs
end
