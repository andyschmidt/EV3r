module EV3r
class Device
   attr :dev_path

  def initialize(dev_path)
     @dev_path = dev_path
  end
 
  def method_missing(name, *args, &block)
     raise "Device missing" if @dev_path.nil?
     param = File.join @dev_path, name.to_s
     super unless File.exist? param
     if args.first.nil?
        return IO.read(param).strip
     else
       IO.write param, args.first.to_s
     end
  end
end
end
