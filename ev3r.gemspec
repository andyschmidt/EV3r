$:.unshift File.join(File.dirname(__FILE__),'lib')

require 'ev3r'

spec = Gem::Specification.new do |s|
  s.name = 'EV3r'
  s.version = EV3r.version
  s.summary = 'EV3 Ruby Bindings'
  s.description = ''
  s.homepage = 'https://github.com/andyschmidt/EV3r'
  s.email = 'as@andreas-schmidt.de'
  s.require_paths = ['lib']
  s.executables = [ ]
  s.authors = 'Andreas Schmidt'
  
  files = []

  %w( README.md CHANGELOG.md .yardopts).each do |fn|
     files << fn if File.exist?(fn)
  end
  
  s.files = files
end
