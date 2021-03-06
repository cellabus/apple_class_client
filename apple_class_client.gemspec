# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apple_class_client/version'

Gem::Specification.new do |spec|
  spec.name          = "apple_class_client"
  spec.version       = AppleClassClient::VERSION
  spec.authors       = ["Albert Wang"]
  spec.email         = ["aywang31@gmail.com"]

  spec.summary       = %q{Client for accessing Apple MDM class information}
  spec.description   = %q{This is a client for accessing Apple MDM's class, person, location, and course rosters.}
  spec.homepage      = "https://github.com/albertyw/apple_class_client"
  spec.license       = "AGPL-3.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "oauth", "~> 0.5.6"
  spec.add_dependency "typhoeus", "~> 1.4.0"
  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 13"
  spec.add_development_dependency "rspec", "~> 3.10"
  spec.add_development_dependency "simplecov", "~> 0.21.2"
end
