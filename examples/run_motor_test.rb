if __FILE__ == $0
  $:.unshift File.join(File.dirname(__FILE__),'..','lib')
end

require 'ev3r'

m = EV3r::RunMotor.new :B
puts "run mode: #{m.run_mode}"
m.start
sleep 3
m.stop
sleep 3
m.start 900
sleep 3
m.stop
