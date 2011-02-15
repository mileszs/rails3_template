# Setup Devise, maybe
if yes?("Would you like to install and generate your Devise model now? (yes/no)".red)
  # generate 'devise:install'
  run "#{@rvm} exec rails generate devise:install"
  devise_model_name = 'User'
  desired_model_name = ask("What would you like to call your Devise model? (e.g. 'User', 'Admin'): ".red)
  desired_model_name = devise_model_name if desired_model_name.blank?
  run "#{@rvm} exec rails generate devise #{desired_model_name}"
end
