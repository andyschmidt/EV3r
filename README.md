EV3r
=========

EV3r provides Ruby bindings for programming the Lego EV3 brick.
To use these bindings you must have a Lego EV3 running with a linux kernel from the awesome ev3dev team (http://www.ev3dev.org/).

#Supported images
Most of the development is done with the jessie-image.
The bindings may run on other images too ... maybe. 

#Use the base classes
##Create a position motor class

```ruby
module EV3r
  class PositionMotor < Motor
    def reset
      position 0
    end

    def go(pos)
      position_sp pos
      run 1
    end

    def initialize(port)
      super port

      position 0
      run_mode :position
      #position 0
      stop_mode :brake
      #      hold_mode :on
      regulation_mode :on
      ramp_up_sp 300
      ramp_down_sp 300

    end

  end
end
```


#Use predefined classes

###Sonic Sensor (IR_PROXY)

```ruby
require 'ev3r'

s = EV3r::SonicIRProx.new 1
d = 1
while d > 0 
  d = s.distance
  puts d
end
```


You can find some more examples in the correspondent folder.

License
----
MIT (see LICENSE file)

