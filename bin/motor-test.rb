if __FILE__ == $0
  $:.unshift File.join(File.dirname(__FILE__),'..','lib')
end

require 'ev3r'

m = EV3r::PositionMotor.new :A
m.go 360
5.times do
   puts "---"
puts m.run
puts m.state
puts m.position
sleep 1
end
