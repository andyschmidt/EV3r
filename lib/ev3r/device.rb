module EV3r
class Device
   attr :dev_path

  def initialize(dev_path)
     @dev_path = dev_path
  end
 
  def method_missing(name, *args, &block)
     raise "Device missing" if @dev_path.nil?
     param = File.join @dev_path, name.to_s.gsub(/=$/,'')
     if args.first.nil?
        super unless File.exist? param
        return IO.read(param).strip
     else
       # check if sp version exists
       if File.exist? "#{param}_sp"
         IO.write "#{param}_sp", args.first.to_s
       elsif File.exist? param
         IO.write "#{param}", args.first.to_s
       else
         super
       end
     end
  end
end
end
