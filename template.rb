# Check prerequisites
unless Gem.available?("colored")
  run "gem install colored"
  Gem.refresh
  Gem.activate("colored")
end

unless Gem.available?("rails")
  run "gem install rails"
  Gem.refresh
  Gem.activate("rails")
end

unless Gem.available?("bundler")
  run "gem install bundler"
  Gem.refresh
  Gem.activate("bundler")
end

unless Gem.available?("haml")
  run "haml"
  Gem.refresh
  Gem.activate("haml")
end

require "colored"
require "rails"
require "bundler"
require "haml"

# Set directory for partials
@partials = "#{File.dirname(__FILE__)}/partials"

puts "\n========================================================="
puts " RAILS 3 TEMPLATE".yellow.bold
puts "=========================================================\n"

apply "#{@partials}/_gemfile.rb"
apply "#{@partials}/_rvm.rb"           # Must be after gemfile since it runs bundler
apply "#{@partials}/_simple_form.rb"
apply "#{@partials}/_helpers.rb"
apply "#{@partials}/_config.rb"
apply "#{@partials}/_devise.rb"
apply "#{@partials}/_git.rb"           # Must be last in order to commit initial repository

puts "\n========================================================="
puts " INSTALLATION COMPLETE!".yellow.bold
puts "=========================================================\n\n\n"
