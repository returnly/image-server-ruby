# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'image_server/version'

Gem::Specification.new do |spec|
  spec.name          = 'image_server'
  spec.version       = ImageServer::VERSION
  spec.authors       = ['Richard Millan']
  spec.email         = ['richardiux@gmail.com']

  spec.summary       = %q{ImageServer ruby client}
  spec.homepage      = 'https://github.com/image-server/ruby_image_server'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = Dir.glob('lib/**/*')
  spec.test_files    = Dir.glob('spec/**/*')
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.7.6'

  spec.add_development_dependency 'pry', '~> 0.14.1'
  spec.add_development_dependency 'bundler', '~> 2.1.4'
  spec.add_development_dependency 'rake', '~> 13.0.6'
  spec.add_development_dependency 'rspec', '~> 3.11.0'
  spec.add_development_dependency 'webmock', '~> 3.14.0'
end
