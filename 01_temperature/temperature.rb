#write your code here
def ftoc(far)
	cel = (far - 32.0 ) * 5.0 / 9.0
	return cel
end

def ctof(cel)
	far = cel * 9.0 / 5.0  + 32
	return far
end
