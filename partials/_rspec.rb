# Set up rspec

puts "Setting up RSpec ... ".magenta

remove_dir 'test'

# generate 'rspec:install'
run "#{@rvm} exec rails generate rspec:install"

generators = <<-RUBY
  config.generators do |g|
      g.test_framework :rspec, :fixture => true, :views => false
      g.fixture_replacement :factory_girl, :dir => "spec/factories"
    end
RUBY
application generators
