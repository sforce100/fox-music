set :deploy_to, "/opt/rails_apps/#{application}"
set :rails_env, "staging"
set :unicorn_path, "#{deploy_to}/current/config/unicorn.rb"

role :web, "0.0.0.0"                          # Your HTTP server, Apache/etc
role :app, "0.0.0.0"                          # This may be the same as your `Web` server
role :db,  "0.0.0.0", :primary => true # This is where Rails migrations will run
set :user, "dev"
