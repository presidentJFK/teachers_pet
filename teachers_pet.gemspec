# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'teachers_pet/version'

Gem::Specification.new do |spec|
  spec.name          = "teachers_pet"
  spec.version       = TeachersPet::VERSION
  spec.authors       = ["David Begin"]
  spec.email         = ["davidmichaelbe@gmail.com"]
  spec.summary       = %q{Tracking Code metrics}
  spec.description   = %q{Numbers to help you make choices}
  spec.homepage      = "https://github.com/presidentJFK/teachers_pet"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "sinatra"
  spec.add_runtime_dependency "lazy_high_charts"
  spec.add_runtime_dependency "pg"
end
