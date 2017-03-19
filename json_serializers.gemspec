# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json_serializers/version'

Gem::Specification.new do |spec|
  spec.name          = "json_serializers"
  spec.version       = JsonSerializers::VERSION
  spec.authors       = ["Pete Hawkins"]
  spec.email         = ["pete@phawk.co.uk"]

  spec.summary       = %q{Serialize active record objects to JSON}
  spec.description   = %q{Serialize active record objects to JSON}
  spec.homepage      = "https://github.com/phawk/json_serializers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 4.0"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
