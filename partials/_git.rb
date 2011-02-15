# Create a .gitignore file and a new local repository, commit everything

puts "Initializing new Git repo ...".magenta

remove_file 'public/index.html'

# Put database.yml.example in the repo, ignore database.yml
run "cp config/database.yml config/database.yml.example"
remove_file '.gitignore'
file '.gitignore', <<-CODE.gsub(/^ {2}/, '')
  .DS_Store
  .bundle
  .rvmrc
  mkmf.log
  log/*
  coverage/*
  tmp/**/*
  config/database.yml
  coverage/*
CODE

git :init
git :add => "."
git :commit => "-am 'Initial commit.'"
