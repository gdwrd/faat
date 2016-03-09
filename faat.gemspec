# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faat/version'

Gem::Specification.new do |spec|
  spec.name          = 'faat'
  spec.version       = Faat::VERSION
  spec.authors       = ['Nazarii Sheremet']
  spec.email         = ['xo8bit@gmail.com']

  spec.summary       = 'Faat kills your fat models.'
  spec.description   = 'Gem Faat kills your fat models.'
  spec.homepage      = 'https://github.com/xo8bit/faat'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    fail 'RubyGems 2.0 or newer is required to protect against
            public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency 'virtus', '~> 1.0.5'
  spec.add_runtime_dependency 'activemodel'
  spec.add_runtime_dependency 'activesupport'
  spec.add_runtime_dependency 'rails'

  spec.add_development_dependency 'bundler', '>= 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4.0'
  spec.add_development_dependency 'pry'
end
