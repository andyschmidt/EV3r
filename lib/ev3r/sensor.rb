module EV3r
   class Sensor < Device

#      /sys/bus/legoev3/devices/in4:ev3-analog-sensor/msensor/sensor1

   def initialize(port)
      @dev = nil
      device_path = "/sys/bus/legoev3/devices"
      motor_path = File.join device_path, "in#{port.to_s.upcase}"
      Dir.glob("#{motor_path}/**/tacho-motor*").each do |tm|
        @dev = tm if tm =~ /tacho-motor\d/ 
      end
      super @dev

   end
   
end
end
