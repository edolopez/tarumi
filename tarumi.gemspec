# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tarumi/version'

Gem::Specification.new do |spec|
  spec.name          = "tarumi"
  spec.version       = Tarumi::VERSION
  spec.authors       = ["Abraham Kuri"]
  spec.email         = ["kurenn@icalialabs.com"]
  spec.summary       = %q{A super simple library to interact with Slack webhooks}
  spec.description   = %q{A super simple library to interact with Slack webhooks}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency "httparty"
  spec.add_dependency "activesupport"
end
