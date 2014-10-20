if __FILE__ == $0
  $:.unshift File.join(File.dirname(__FILE__),'..','lib')
end

require 'ev3r'

s = EV3r::TouchSensor.new 4
@count = 0

t = Thread.new{ 
   loop do 
      s.touched?
      @count += 1
   end
}

sleep 3
puts @count
