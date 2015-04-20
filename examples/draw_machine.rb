if __FILE__ == $0
  $:.unshift File.join(File.dirname(__FILE__),'..','lib')
end

require 'ev3r'

left = EV3r::RunMotor.new :A
center = EV3r::RunMotor.new :B
right = EV3r::RunMotor.new :C

left.start 900
center.start 200
right.start 900

sleep 600

right.stop
left.stop
center.stop
