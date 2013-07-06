# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sampler/version'

Gem::Specification.new do |gem|
  gem.name = 'sampler'
  gem.version = Sampler::VERSION
  gem.authors = ['Cory Kaufman-Schofield']
  gem.email = ['cory@corykaufman.com']
  gem.summary  = %q{No more foobar! Run your app locally with *real* sample data}
  gem.homepage = 'http://github.com/allspiritseve/sampler'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rake'
end
