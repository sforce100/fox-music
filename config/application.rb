require 'uri'
# require 'em-synchrony/activerecord'
require 'yaml'
require 'erb'

db = YAML.load(ERB.new(File.read('config/database.yml')).result)[Goliath.env.to_s]
# ActiveRecord::Base.establish_connection(db)