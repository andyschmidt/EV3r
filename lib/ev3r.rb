require 'ev3r/device'
require 'ev3r/motor'
require 'ev3r/position_motor'
require 'ev3r/run_motor'
require 'ev3r/sensor'
require 'ev3r/touch_sensor'
require 'ev3r/sonic_ir_prox'

module EV3r
  
  SENSOR_PATHS = [
    '/sys/class/lego-sensor',
    '/sys/bus/legoev3/devices'
  ]
  
  MOTOR_PATHS = [
    '/sys/bus/lego/devices'
  ]
  
  def self.version
    '0.3'
  end
end

