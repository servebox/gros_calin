# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gros_calin/version'

Gem::Specification.new do |spec|
  spec.name          = "gros_calin"
  spec.version       = GrosCalin::VERSION
  spec.authors       = ["Jef Mathiot"]
  spec.email         = ["jeff.mathiot@gmail.com"]
  spec.summary       = %q{Make database queries available via HTTP}
  spec.description   = %q{Make database queries available via HTTP}
  spec.homepage      = "https://github.com/servebox/gros_calin"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'mocha', '~> 1.1', '>= 1.1.0'
  spec.add_development_dependency 'coveralls', '~> 0.7', '>= 0.7.1'
  spec.add_development_dependency 'minitest', '~> 5.4', '>= 5.4.1'
  spec.add_development_dependency 'minitest-implicit-subject', '~> 1.4', '>= 1.4.0'
  spec.add_development_dependency 'rb-readline', '~> 0.5', '>= 0.5.0'
  spec.add_development_dependency 'guard', '~> 2.11', '>= 2.11.1'
  spec.add_development_dependency 'guard-minitest', '~> 2.3', '>= 2.3.2'

  spec.add_development_dependency 'mysql2', '~> 0.3', '>= 0.3.18'
  spec.add_development_dependency 'moped', '~> 2.0', '>= 2.0.3'

  spec.add_dependency 'sinatra', '~> 1.4', '>= 1.4.5'
  spec.add_dependency 'sinatra-contrib', '~> 1.4', '>= 1.4.2'
  spec.add_dependency 'rack', '~> 1.6', '>= 1.6.0'
  spec.add_dependency 'thin', '~> 1.6', '>= 1.6.3'
  spec.add_dependency 'thor', '~> 0.19', '>= 0.19.1'

end
