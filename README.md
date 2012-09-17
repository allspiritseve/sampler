# Sampler

## Installation

Add this line to your application's Gemfile:

  gem 'sampler'

And then execute:

  $ bundle

Or install it yourself as:

  $ gem install sampler
  
To generate a default samples.rb file and an initializer, run:

  $  rails generate sampler:install

This will create db/samples.rb and config/initializers/sampler.rb

## Usage

WARNING: The following command will drop your current database and
run rake db:seed before running rake db:sample. Only run this command
if you're sure there's nothing in your database you want to keep.

  $ bundle exec rake db:sample

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
