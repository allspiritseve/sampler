# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sampler/version'

Gem::Specification.new do |gem|
  gem.name          = "sampler"
  gem.version       = Sampler::VERSION
  gem.authors       = ["Cory Kaufman-Schofield"]
  gem.email         = ["cory@corykaufman.com"]
  gem.description   = %q{Set up your app with sample data using rake db:sample}
  gem.summary       = %q{Set up your app with sample data}
  gem.homepage      = "http://github.com/allspiritseve/sampler"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
