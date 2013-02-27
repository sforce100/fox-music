require "rubygems"
require "bundler/setup"
require 'goliath'
# require 'em-synchrony/activerecord'
require 'grape'
require "fiber"

#初始化时加载路径
Dir[File.dirname(__FILE__) + '/app/api/*.rb'].each {|file| require file}
Dir[File.dirname(__FILE__) + '/app/models/*.rb'].each {|file| require file}

class Application < Goliath::API

  Goliath::Server::DEFAULT_PORT = 3721

  ENV['NLS_LANG'] = 'SIMPLIFIED CHINESE_CHINA.AL32UTF8'
  ENV['NLS_NCHAR'] = 'SIMPLIFIED CHINESE_CHINA.ZHS16GBK'

  def response(env)
    ::SwaggerDemo::Root.call(env)
  end

end