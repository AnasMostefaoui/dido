# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Dido/version'

Gem::Specification.new do |spec|
  spec.name          = "dido"
  spec.version       = Dido::VERSION
  spec.authors       = ["Pedro Piñera"]
  spec.email         = ["pedro@gitdo.com"]

  spec.summary       = %q{Dido is a command line tools for generating Swift libraries XCode projects (Carthage & CocoaPods support)}
  spec.description   = %q{Dido makes the creation of libraries faster thanks to a set of commands. It creates the project for you with your configuration and makes it ready to be integrated using CocoaPods or Carthage}
  spec.homepage      = "https://github.com/gitdo/dido"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables = ['dido']
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "0.19.1"
  spec.add_dependency "colorize", "0.7.7"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "byebug"
end
