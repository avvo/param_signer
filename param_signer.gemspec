# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'param_signer/version'

Gem::Specification.new do |spec|
  spec.name          = "param_signer"
  spec.version       = ParamSigner::VERSION
  spec.author        = "Infrastructure team"
  spec.email         = "Infrastructure@avvo.com"
  spec.summary       = %q{Generate signatures based on a secret key}
  spec.description   = %q{Generate signatures based on a secret key}
  spec.homepage      = "https://github.com/avvo/param_signer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17.3"
  spec.add_development_dependency "rake", "~> 12.3.3"
end
