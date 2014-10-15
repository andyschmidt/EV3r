if __FILE__ == $0
  $:.unshift File.join(File.dirname(__FILE__),'..','lib')
end

require 'ev3r'

s = EV3r::TouchSensor.new 4
10.times do 
puts s.touched?
sleep 1
end
