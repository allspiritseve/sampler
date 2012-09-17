module Sampler
  module Generators
    class InstallGenerator < Rails::Generators::Base

      source_root File.expand_path('../templates', __FILE__)
      
      def copy_initializer_file
        template 'initializer.rb', 'config/initializers/sampler.rb'
      end

      def create_samples_file
        template 'samples.rb', 'db/samples.rb'
      end

    end
  end
end
