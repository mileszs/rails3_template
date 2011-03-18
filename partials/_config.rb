puts "Some updates to config/applicatin.rb ... ".magenta
generators = <<-RUBY
  config.generators.helper = false
  config.generators do |g|
      g.template_engine :haml
      g.test_framework :rspec, :fixture => true, :views => false
      g.fixture_replacement :factory_girl, :dir => "spec/factories"
    end
RUBY
application generators
