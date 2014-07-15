# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cardgame/version'

Gem::Specification.new do |spec|
  spec.name          = "cardgame"
  spec.version       = Cardgame::VERSION
  spec.authors       = ["Joe Sak"]
  spec.email         = ["joe@joesak.com"]
  spec.summary       = %q{Generates cards for a card-based game}
  spec.description   = %q{See summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake",    "~> 10.3.2"
  spec.add_development_dependency "rspec",   "~> 3.0.0"
end
