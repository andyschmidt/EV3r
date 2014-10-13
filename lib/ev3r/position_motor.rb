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

      run_mode :position
      position 0
      stop_mode :brake
#      hold_mode :on
      regulation_mode :on
#      ramp_up_sp 1000
#     ramp_down_sp 1000

   end
   
end
end
