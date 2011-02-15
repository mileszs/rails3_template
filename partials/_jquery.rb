puts "Getting jQuery ...".magenta

# Delete old prototype drivers
# Do this first so that you don't delete the new jQuery rails one below
inside('public/javascripts') do
  run "rm ./*.js"
end

# Download latest jQuery.min
get "http://code.jquery.com/jquery-latest.min.js", "public/javascripts/jquery.js"

# Download latest jQuery drivers
get "https://github.com/rails/jquery-ujs/raw/master/src/rails.js", "public/javascripts/rails.js"

# Remove jQuery Comments in application.rb
gsub_file 'config/application.rb', /#\s*(JavaScript files you want as :defaults (application.js is always included).)/, '\1'
gsub_file 'config/application.rb', /#\s*(config.action_view.javascript_expansions[:defaults] = %w(jquery rails))/, '\1'

# Add a jquery.rake file to lib/tasks
# and a jquery:update task to update
# jquery and rails drivers
rakefile("jquery.rake") do
  <<-TASK
require 'net/https'
require 'uri'

namespace :jquery do
  task :update do
    http = Net::HTTP.new("code.jquery.com")
    http.start do |http|
        resp = http.get("/jquery-latest.min.js")
        open("public/javascripts/jquery.js", "wb") do |file|
            file.write(resp.body)
        end
    end

    http = Net::HTTP.new("github.com", 443)
    http.use_ssl = true
    http.start do |http|
        http.use_ssl = true
        resp = http.get("/rails/jquery-ujs/raw/master/src/rails.js")
        open("public/javascripts/rails.js", "wb") do |file|
            file.write(resp.body)
        end
    end

    puts "Updated jQuery and Rails jQuery drivers!"
  end
end
  TASK
end
