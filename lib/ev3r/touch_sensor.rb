module EV3r
  class TouchSensor < Sensor

    #      /sys/bus/legoev3/devices/in4:ev3-analog-sensor/msensor/sensor1
    def touched?
      value0 == "1"
    end

    def initialize(port)

      super port, 'lego-ev3-touch'

    end

  end
end
