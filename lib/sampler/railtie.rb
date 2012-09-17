module Sampler
  class Railtie < Rails::Railtie
    railtie_name :sampler

    rake_tasks do
      load 'tasks/db/sample.rake'
    end
  end
end
