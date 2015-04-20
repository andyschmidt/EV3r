module EV3r
  class Sensor < Device
    attr :base_path

    #      /sys/bus/legoev3/devices/in4:ev3-analog-sensor/msensor/sensor1
    def initialize(port, device_name)
      @dev = nil
      #base_path = '/sys/bus/legoev3/devices'
      @base_path = '/sys/class/lego-sensor'

      @dev = find_device_path(port, device_name)
      raise "Could not find #{device_name} at port #{port}" if @dev.nil?

      super @dev

    end

    def find_device_path(port, device_name)
      Dir.glob("#{@base_path}/sensor*").each do |sdir|
        f = File.join( sdir, 'driver_name' )
        dev_name = IO.read(f).strip
        puts dev_name
        next unless dev_name == device_name
        port_str = 'in' + port.to_s.gsub(/^in/i, '')
        f = File.join( sdir, 'port_name')
        dev_port = IO.read(f).strip
        puts dev_port
        return sdir if dev_port == port_str
      end
      nil

    end

  end
end
