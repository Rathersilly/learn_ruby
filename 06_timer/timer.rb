class Timer
  attr_accessor :seconds, :time_string
  
  def initialize(initialtime = 0)
  	@seconds = initialtime
  end

  def time_string 	
  	hour = padded(@seconds / 3600)	
  	min = padded((@seconds-(hour.to_i*3600)) / 60)
  	sec = padded(@seconds % 60)
  	return "#{hour}:#{min}:#{sec}"
  end

  def padded(num) 	
  	return "0#{num}" if num < 10
  	return num.to_s
  end

end

timer = Timer.new(4732)
puts timer.inspect

puts timer.time_string

timer2 = Timer.new
timer2
puts timer2.time_string
