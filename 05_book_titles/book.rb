class Book
# write your code here
	attr_accessor :title

	def initialize
	end

	def title=(name)
		@title = titleize(name)
		
	end

	private
	def titleize(string)
		ignorelist = %w[the and over in of a an]
		words = string.split(" ")
		temparray = []
		words.each do |i|
			i = i.capitalize if !ignorelist.include?(i)
			temparray.push(i)
		end
		temparray[0].capitalize!

		return temparray.join(" ")

	end



end

book = Book.new
book.title = "hi"
puts book.title
puts book.inspect