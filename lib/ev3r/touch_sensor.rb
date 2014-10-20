module EV3r
   class TouchSensor < Device

#      /sys/bus/legoev3/devices/in4:ev3-analog-sensor/msensor/sensor1

def touched?
   x = value0
   value0 == "1"
end

   def initialize(port)
      @dev = nil
      device_path = "/sys/bus/legoev3/devices"
      sensor_path = File.join device_path, "in#{port.to_s}"
      Dir.glob("#{sensor_path}*/msensor/*").each do |tm|
        @dev = tm if tm =~ /sensor\d/ 
      end
      
      super @dev

   end
   
end
end
