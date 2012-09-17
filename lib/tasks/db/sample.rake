namespace :db do
  task :sample => ['db:ensure_environment','environment','db:drop','db:setup'] do
    'db/samples.rb'.tap do |sample_file|
      load(sample_file) if File.exists?(sample_file)
    end
  end

  task :ensure_environment do
    if !Sampler.environments.include? Rails.env
      puts "This task can only run in a "#{Sampler.environments} environment"
      exit
    end
  end
end
