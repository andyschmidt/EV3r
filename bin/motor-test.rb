if __FILE__ == $0
  $:.unshift File.join(File.dirname(__FILE__),'..','lib')
end

require 'ev3r'

m = EV3r::PositionMotor.new :B
puts "==="
puts m.dev_path
m.pulses_per_second = 900
puts m.pulses_per_second
puts "run mode: #{m.run_mode}"
m.go 360
step=90
pos = 90
5.times do
   puts "---"
puts m.position
m.go pos
pos += step
sleep 1
end
