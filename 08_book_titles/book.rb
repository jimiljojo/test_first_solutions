class Book
	attr_accessor :title

	def initialize
	end

	def title
		@title = titleize(@title)
	end

	#used the titleize function from ex 03 - simon says with a little bit modifications
	def titleize(str)
		little_words = ["and", "or", "the", "over", "to", "the", "a", "but","in","of","an"]
		newstr = ''
		str.split.each_with_index { |x,i| 
			if !little_words.include?(x) || i==0			#captialize only if not in little words and capitalize first word
				x.capitalize!
			end
			newstr += x + ' '
			}
			return newstr[0..-2]
	end
end