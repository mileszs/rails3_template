# Set up Gemfile

puts "Creating Gemfile ...".magenta

remove_file 'Gemfile'
file 'Gemfile', <<-RUBY.gsub(/^ {2}/, '')

  # Gems host
  source 'http://rubygems.org'

  # Rails (version >= 3.1.0 and < 3.2)
  gem 'rails', '~> 3.1.0'

  # Database
  gem 'pg'

  # Assets
  gem 'coffee-script'
  gem 'uglifier'
  gem 'haml'
  gem 'jquery-rails'

  # Form Builder
  gem 'simple_form'

  # DRY those controllers
  gem 'inherited_resources'

  # User authentication (accounts)
  gem 'devise', '~> 1.1'

  # Markdown
  gem 'maruku'
  gem 'redcarpet'

  # Pagination of long lists
  gem 'will_paginate', '~> 3.0'

  # DelayedJob for delayed jobs
  gem 'delayed_job'

  gem 'json_pure'
  gem 'thin'

  gem 'newrelic_rpm'

  group :development, :test do
    gem "rspec-rails"
    gem 'capybara'
    gem 'database_cleaner'
    gem 'cucumber-rails'
    gem 'cucumber'
    gem 'spork'
    gem 'launchy'
    gem 'factory_girl_rails'
    gem 'faker'
    gem 'fakeweb'
    gem 'gherkin'
    gem 'deadweight'

    gem 'rails3-generators'
    gem 'hpricot'
    gem 'ruby_parser', '2.0.4'
    gem 'rcov'

    gem 'heroku'
    gem 'taps'
  end

RUBY
