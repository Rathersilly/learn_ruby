#write your code here
def translate(string)
	
	 vowels = %w[a e i o u]
	 
	words = string.split(" ")
	
	newsentence = []
	words.each do |w|
		i = 0
		newword = ""
		while !vowels.include?(w[i]) do



		 	newword = w[i+1 ..w.length] + w[0..i]
		 	
		 	if w[i..i+1] == "qu"
		 		newword = w[i+2 ..w.length] + w[0..i+1]
		 	end
		 	i += 1


		 
	 		
	 	end
	 	newword = w if i == 0 
	 	newword = newword + "ay"
	 	newsentence.push(newword)
	end
	
	newsentence = newsentence.join(" ")
	puts newsentence
	puts newsentence.inspect
	return newsentence
end

translate("apple")
translate("cherry pie")
