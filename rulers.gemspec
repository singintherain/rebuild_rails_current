# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rulers/version'

Gem::Specification.new do |spec|
  spec.name          = "brick"
  spec.version       = Rulers::VERSION
  spec.authors       = ["lvsong"]
  spec.email         = ["lvsong@rd.tuan800.com"]
  spec.summary       = %q{A Rack-based Web Framework}
  spec.description   = %q{My First Web Framework}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rack-test", "0.6.2"
  spec.add_development_dependency "test-unit", "3.0.1"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "rack", '1.5.2'
  spec.add_runtime_dependency "erubis"
  spec.add_runtime_dependency "rack-test"
  spec.add_runtime_dependency 'multi_json'
  spec.add_runtime_dependency 'debugger'
end
