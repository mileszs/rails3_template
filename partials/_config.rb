puts "Some updates to config/applicatin.rb ... ".magenta
generators = <<-RUBY
  config.generators.helper = false
  config.generators do |g|
      g.template_engine :haml
      g.fixture_replacement :factory_girl, :dir => "test/factories"
    end
RUBY
application generators
