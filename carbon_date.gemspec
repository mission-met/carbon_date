# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carbon_date/version'

Gem::Specification.new do |spec|
  spec.name          = "carbon_date"
  spec.version       = CarbonDate::VERSION
  spec.authors       = ["Bradley Marques"]
  spec.email         = ["bradleyrcmarques@gmail.com"]

  spec.summary       = %q{Models (pre)historical dates with (im)precision in Ruby}
  #spec.description   = %q{Models (pre)historical dates with (im)precision in Ruby}
  spec.homepage      = "https://github.com/bradleymarques/carbon_date"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '>= 11.1.2', '~> 11.1.2'
  spec.add_development_dependency 'simplecov', '>= 0.11.2', '~> 0.11.2'
  spec.add_development_dependency 'minitest-display', '>= 0.3.1', '~> 0.3.1'
  spec.add_development_dependency 'minitest-reporters', '~> 1.1.9', '>= 1.1.9'
  spec.add_development_dependency 'm', '>= 1.5.0', '~> 1.5.0'
  spec.add_development_dependency 'pry', '~> 0.10.3', '>= 0.10.3'
  spec.add_development_dependency 'rdoc', '~> 4.2.2', '>= 4.2.2'
  spec.add_development_dependency 'mocha', '~> 1.1.0', '>= 1.1.0'
  spec.add_development_dependency 'coveralls', '~> 0.8.13', '>= 0.8.13'


  spec.add_dependency 'activesupport'
end
