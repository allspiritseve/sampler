namespace :db do
  task :sample => ['environment','db:ensure_environment','db:drop','db:setup'] do
    'db/samples.rb'.tap do |sample_file|
      load(sample_file) if File.exists?(sample_file)
    end
  end

  task :ensure_environment do
    if !Sampler.environments.include? Rails.env
      puts "This task can only run in the following environments: #{Sampler.environments.to_sentence}"
      exit
    end
  end
end
