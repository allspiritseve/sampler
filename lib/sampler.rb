require 'sampler/version'
require 'sampler/railtie' if defined?(Rails)

module Sampler
  def self.environments
    @@environments = %w(development)
  end

  def self.environments=(environments)
    @@environments = environments
  end

  def self.config
    yield self
  end
end
