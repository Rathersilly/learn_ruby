#write your code here
def echo(thing)
	thing

end

def shout(thing)
	thing.upcase
end

def repeat(thing, num=2)
	thing + (" " + thing)*(num - 1)
end

def start_of_word(word, length)
	return word[0, length]
end

def first_word(thing)
	thing[/\w*\s/].chomp(" ")
end

def titleize(string)
	ignorelist = %w[the and over]
	words = string.split(" ")
	temparray = []
	words.each do |i|
		i = i.capitalize if !ignorelist.include?(i)
		temparray.push(i)
	end
	temparray[0].capitalize!

	return temparray.join(" ")

end



thing = "war and peace"
puts titleize(thing)