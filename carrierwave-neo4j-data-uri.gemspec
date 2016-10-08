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
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'carrierwave-neo4j'
  spec.add_dependency 'data_uri'

  spec.add_development_dependency "bundler", "~> 1.12.5"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'yard', '~> 0.8'
  spec.add_development_dependency 'rb-readline'
end
