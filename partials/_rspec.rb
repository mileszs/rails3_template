# Set up rspec

puts "Setting up RSpec ... ".magenta

remove_dir 'test'

# generate 'rspec:install'
run "#{@rvm} exec rails generate rspec:install"
