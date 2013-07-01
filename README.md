# Sampler

Local development is a lot more fun when your app has some real data to work with. Sampler provides a convention similar to seeds.rb where you set up sample data in db/samples.rb and then run it whenever you want a fresh, pristine set of data to work with.

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

## Sample data

Add your sample data to db/samples.rb. Say you were writing a grading app, you might want an admin user (Albus Dumbledore), a TA/GSI (Percy Weasley), students (Harry Potter, Ron Weasley, Hermione Granger), terms, classes (Defense Against the Dark Arts), assignments, grades, etc. If you need it to properly run the app and do all the normal things users would do with your app, it's a good candidate to go in your samples.rb. 

What isn't a good candidate for samples.rb? Data that you need in production to bootstrap your app should go in seeds.rb. Actual user data probably shouldn't go in samples.rb, nor any sensitive information. Take this opportunity to pour some imagination into your app! Have fun with it, I promise it makes local development and testing way more enjoyable.

## Usage

WARNING: The following command will drop your current database and
run rake db:setup before running rake db:sample. Only run this command
if you're sure there's nothing in your database you want to keep.

    $ bundle exec rake db:sample

## Contributing

1. Fork it
1. Create a feature branch (git checkout -b my-new-feature)
1. Stage changes (git add -p)
1. Commit your changes (git commit)
1. Push to Github (git push -u origin my-new-feature)
1. Create new Pull Request
