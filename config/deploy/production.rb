puts 'bbbb'
set :deploy_to, "/opt/rails_apps/#{application}"
set :rails_env, "production"
set :unicorn_path, "#{deploy_to}/current/config/unicorn.rb"

role :web, "0.0.0.0"                          # Your HTTP server, Apache/etc
role :app, "0.0.0.0"                          # This may be the same as your `Web` server
# role :db,  "192.168.30.78", :primary => true # This is where Rails migrations will run
set :user, "hzh"

set :rvm_ruby_string, 'ruby-1.9.2-p320'

set :branch do
  default_tag = `git tag`.split("\n").last

  tag = Capistrano::CLI.ui.ask "Tag to deploy (make sure to push the tag first): [#{default_tag}] "
  tag = default_tag if tag.empty?
  tag
end
