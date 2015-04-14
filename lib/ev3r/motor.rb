module EV3r
   class Motor < Device

   def go 
     run 1
   end

   def stop
     run 0
   end

   def break
      r = estop
      estop r
   end
   
   def running?
      return false if state =~ /idle/i
      return true
   end

   def initialize(port)
      @dev = nil
      device_path = "/sys/bus/lego/devices"
#      device_path = "/sys/devices/platform/legoev3-ports"
      motor_path = File.join device_path, "out#{port.to_s.upcase}:ev3-tacho-moto"
      #Dir.glob("#{motor_path}/**/tacho-motor*").each do |tm|
      Dir.glob("#{device_path}/**/out#{port.to_s.upcase}*").each do |tm|
        Dir.glob("#{tm}/tacho-motor/motor*").each do |mpath|
          puts "* Found motor #{mpath}"
        @dev = mpath 
      end
end
      super @dev

   end
   
end
end
