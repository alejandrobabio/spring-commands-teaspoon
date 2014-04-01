# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spring/commands/teaspoon/version'

Gem::Specification.new do |spec|
  spec.name          = "spring-commands-teaspoon"
  spec.version       = Spring::Commands::Teaspoon::VERSION
  spec.authors       = ["Alejandro Babio"]
  spec.email         = ["alejandro.e.babio@hotmail.com"]
  spec.description   = %q{teaspoon command for spring}
  spec.summary       = %q{teaspoon command for spring}
  spec.homepage      = "https://github.com/alejandrobabio/spring-commands-teaspoon"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "spring", ">= 0.9.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
