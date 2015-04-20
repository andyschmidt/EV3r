if __FILE__ == $0
  $:.unshift File.join(File.dirname(__FILE__),'..','lib')
end

require 'ev3r'

s = EV3r::SonicIRProx.new 1
d = 1
while d > 0 
  d = s.distance
  puts d
end
