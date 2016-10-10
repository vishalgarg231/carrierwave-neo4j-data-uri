# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave/neo4j_data_uri/version'

Gem::Specification.new do |spec|
  spec.name          = "carrierwave-neo4j-data-uri"
  spec.version       = Carrierwave::Neo4j::Data::Uri::VERSION
  spec.authors       = ['Vishal Garg']
  spec.email         = ['vishalgarg231@gmail.com']

  spec.summary       = %q{Carrierwave Neo4j plugin that allows create image from data uri}
  spec.description   = %q{Carrierwave Neo4j plugin that allows create image from data uri}
  spec.homepage      = "https://github.com/vishalgarg231/carrierwave-neo4j-data-uri"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version     = ">= 2.1.9"

  spec.add_dependency 'carrierwave-neo4j', '>= 2.0.1'
  spec.add_dependency 'data_uri', '>= 0.1.0'

  spec.add_development_dependency "bundler", "~> 1.12.5"
  spec.add_development_dependency "rake", "~> 11.2.2"
  spec.add_development_dependency 'yard', '~> 0.8'
  spec.add_development_dependency 'rb-readline', '~> 0.5.3'
end
