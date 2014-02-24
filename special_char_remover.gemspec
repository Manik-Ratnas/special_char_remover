# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'special_char_remover/version'

Gem::Specification.new do |spec|
  spec.name          = "special_char_remover"
  spec.version       = SpecialCharRemover::VERSION
  spec.authors       = ["Manish Puri"]
  spec.email         = ["manishspuri@gmail.com"]
  spec.summary       = %q{Translate special characters from your strings.}
  spec.description   = %q{Gem to translate special characters from your string.}
  spec.homepage      = "https://github.com/Manik-Ratnas/special_char_remover"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

end
