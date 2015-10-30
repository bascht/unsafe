Gem::Specification.new do |spec|
  spec.name = 'unsafe'
  spec.version = '0.1'
  spec.summary = 'unsafe{} goodness in Ruby.'
  spec.description = 'Stuck with Ruby but want to give Rust a try?'
  spec.email = 'rubygems.org@bascht.com'
  spec.homepage = 'http://bascht.com'
  spec.author = 'bascht'
  spec.bindir = 'bin'
  spec.executable = 'unsafe'
  spec.files = Dir['lib/**/*.rb'] + Dir['bin/*'] + Dir['ext/**/*.so']
  spec.platform = Gem::Platform::CURRENT
  spec.require_paths = [ 'lib', 'ext' ]
  spec.license = 'LGPL'
end
