require 'sampler/version'
require 'sampler/railtie' if defined?(Rails)

module Sampler
  mattr_accessor :environments
  @@environments = %w(development)
  def self.config
    yield self
  end
end
