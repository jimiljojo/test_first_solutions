def echo(str)
	return str
end

def shout(str)
	return str.upcase
end

def repeat(str,num = 2)
	return ((str + " ")*num)[0...-1]
end

def start_of_word(str,num)
	return str[0...num]
end

def first_word(str)
	return str.split[0]
end

def titleize(str)
	little_words = ["and", "or", "the", "over", "to", "the", "a", "but"]
	str.split.each_with_index { |x,i| 
		if !little_words.include?(x) || i==0			#captialize only if not in little words and capitalize first word
			x.capitalize!
		end
		}.join(' ')										#join the splitted array
end