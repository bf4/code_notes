# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'code_notes/version'

Gem::Specification.new do |spec|
  spec.name          = "code_notes"
  spec.version       = CodeNotes::VERSION
  spec.authors       = ["Benjamin Fleischer"]
  spec.email         = ["github@benjaminfleischer.com"]
  spec.description   = %q{code notes task extracted from Rails}
  spec.summary       = %q{code notes task extracted from Rail}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
