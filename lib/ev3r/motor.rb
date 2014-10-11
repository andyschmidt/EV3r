module EV3r
   class Motor < Device

   def go 
     run 1
   end

   def stop
     run 0
   end

   def initialize(port)
      @dev = nil
      device_path = "/sys/bus/legoev3/devices"
      motor_path = File.join device_path, "out#{port.to_s.upcase}"
      Dir.glob("#{motor_path}/**/tacho-motor*").each do |tm|
        @dev = tm if tm =~ /tacho-motor\d/ 
      end
      super @dev

   end
   
end
end
