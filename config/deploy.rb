require "rvm/capistrano"
require "bundler/capistrano"

# Multi stage
require 'capistrano/ext/multistage'
puts 'aaaa'
set :stages, %w(production staging)
set :default_stage, "staging"

set :application, "datahub"
set :repository,  "ssh://git@192.168.9.16:2222/datahub.git"

# 通过远程缓存发布
set :deploy_via, :remote_cache

set :scm, :git
set :bundle_flags, '--quiet'

set :rvm_ruby_string, 'ruby-1.9.2-p320'
set :rvm_type, :system

default_run_options[:pty] = true

namespace :deploy do
  desc "Restart the app after symlinking"
  task :start do
    puts 'before deploy start'
    try_sudo "god restart datahub"
  end
end
# namespace :deploy do
#   task :start, :roles => :app do
#     run "cd #{deploy_to}/current/; RAILS_ENV=#{stage} unicorn_rails -c #{unicorn_path} -D"
#   end

#   task :stop, :roles => :app do
#     run "kill -QUIT `cat #{deploy_to}/current/tmp/pids/unicorn.pid`"
#   end

#   desc "Restart Application"
#   task :restart, :roles => :app do
#     run "kill -USR2 `cat #{deploy_to}/current/tmp/pids/unicorn.pid`"
#   end
# end

# task :init_shared_path, :roles => :web do
#   run "mkdir -p #{deploy_to}/shared/log"
#   run "mkdir -p #{deploy_to}/shared/pids"
# end

# task :link_shared_files, :roles => :web do
#   run "ln -sf #{deploy_to}/shared/pids #{deploy_to}/current/tmp/"
#   run "ln -sf #{deploy_to}/shared/config/config.yml #{deploy_to}/current/config/"
#   run "ln -sf #{deploy_to}/shared/config/mongoid.yml #{deploy_to}/current/config/"
#   run "ln -sf #{deploy_to}/current/public/substation/ #{deploy_to}/shared/public"
# end

# task :compile_assets, :roles => :web do
#   run "cd #{deploy_to}/current/; RAILS_ENV=#{stage} bundle exec rake assets:precompile"
#   desc "Sync the public/substation directory."
#   # system "rsync -vr --exclude='.DS_Store' public/substation/* root@192.168.30.178:/opt/virtual/assets/substation/"
#   system "cp -rf #{deploy_to}/current/public/substation/* /opt/virtual/assets/substation/"
# end

# after "deploy:finalize_update","deploy:symlink", :init_shared_path, :link_shared_files, :compile_assets
# after "deploy:restart", "deploy:cleanup"