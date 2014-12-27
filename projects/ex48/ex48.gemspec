# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ex48"
  spec.version       = '1.0'
  spec.authors       = ["Jonathan Warrick"]
  spec.email         = ["jonathan.warrick@gmail.com"]
  spec.summary       = %q{This is a test project.}
  spec.description   = %q{This is a longer desc.}
  spec.homepage      = "http://jonathanwarrick.com"
  spec.license       = "MIT"

  spec.files         = ['lib/ex48/lexicon.rb']
  spec.executables   = ['bin/ex48']
  spec.test_files    = ['tests/test_ex48.rb']
  spec.require_paths = ["lib"]
end
