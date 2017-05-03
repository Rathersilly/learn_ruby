#write your code here
def translate(string)
	#check if starts with nonvowel
	 words = string.split(" ")
	 newwords = []
	 words.each do |word|


	 vowels = %w[a e i o u]
	 puts word
	 puts word[0]
	 newword = word
	 
 	i = 0
	while !vowels.include?(word[i]) do
	 	newword = word[i+1 ..word.length] + word[0..i]
	 	i += 1
	 	

	 	puts newword
	 end



	 

	newword = newword + "ay"
	puts newword
	return newword
end

translate("apple")
translate("cherry")
