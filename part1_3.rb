def combine_anagrams(words)
	ang = Hash.new([])
	words.each do |word|
		my = word.downcase.split(//).sort.join
		ang[my] += [word]
	end
	ang.values
end
