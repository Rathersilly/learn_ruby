#the multiply method can take multiple integers or arrays of integers
#recursion!

def add(num1, num2)
	return num1+num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(numbers)
	sum =0
	numbers.each {|i| sum += i }
	return sum
end

def multiply(*numbers)
	product = 1
	numbers.each do |i|
		if i.class == Integer
			product *= i
		elsif i.class == Array
			i.each do |j|
				product *= multiply(j)
			end
		end
	end
	return product
end

def power(num1, num2)
	num1**num2
end

def factorial(num)
	return 1 if num == 0
	sum = 1
	num.times do |i|
		print i
		print  " "
		print sum
		puts
		sum *= i+1
		puts "sum = #{sum}"
	end
	
	return sum

end

