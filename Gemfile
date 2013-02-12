#encoding: utf-8?

require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']

source 'https://rubygems.org'
# source 'http://ruby.taobao.org'

gem 'rails', '3.2.8'

gem 'mysql2'

gem 'devise'

gem "rmagick"
gem "carrierwave"

gem 'redis', '2.1.1'


#vedio
gem "paperclip-ffmpeg"
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'anjlab-bootstrap-rails', '>= 2.1', :require => 'bootstrap-rails'
end

gem 'jquery-rails'
gem 'anjlab-bootstrap-rails', '>= 2.1', :require => 'bootstrap-rails'
gem "bootstrap-wysihtml5-rails", :git => "https://github.com/roymax/bootstrap-wysihtml5-rails.git", :ref => "96adc8605986bcfc"
gem 'bootstrap-datepicker-rails'
gem 'bootswatch-rails'
gem 'bootstrap_kaminari'
gem 'simple_form'

if HOST_OS =~ /linux/i
  gem 'therubyracer', '>= 0.8.2'
end
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
