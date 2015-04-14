module EV3r
   class RunMotor < Motor

      def reset
         position 0
      end


      def start(speed=450)
         pulses_per_second speed
         run 1
      end

      def stop
         run 0
      end

   def initialize(port)
      super port

      run_mode :forever
      stop_mode :brake
      regulation_mode :on
      ramp_up 300
      ramp_down 300
   end
   
end
end
