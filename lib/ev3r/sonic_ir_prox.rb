module EV3r
   class SonicIRProx < Sensor

   def distance
     IO.read( File.join( @dev, 'value0' ) ).strip.to_i
   end


   def initialize(port)
      super port, 'lego-ev3-uart-33'
      mode 'IR-PROX'

   end
   
end
end
