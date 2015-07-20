def translate(str)
	vowels = ['a','e','i','o','u']
	consonants = ('a'..'z').to_a-vowels
	newstr = ''
	str.split.each { |word|
		if vowels.include?(word.split(//)[0]) 
			word += 'ay'
		elsif consonants.include?(word.split(//)[1]) && (consonants.include?(word.split(//)[2]) || word[1..2]=='qu')
			word = word[3..word.length]+word[0..2]+'ay'
		elsif consonants.include?(word.split(//)[1]) || word[0..1]=='qu'
			word = word[2..word.length]+word[0..1]+'ay'
		else
			word = word[1..word.length]+word[0]+'ay'
		end
		newstr += word + ' '
	}
	newstr = newstr[0..-2]
	return newstr
end