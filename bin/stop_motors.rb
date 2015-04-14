if __FILE__ == $0
  $:.unshift File.join(File.dirname(__FILE__),'..','lib')
end

require 'ev3r'

left = EV3r::RunMotor.new :A
center = EV3r::RunMotor.new :B
right = EV3r::RunMotor.new :C
right.stop
left.stop
center.stop
