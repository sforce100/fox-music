#这个是管理后台所有的routes配置

Substation::Application.routes.draw do
    namespace :admin do
      root :to => "admin#index"
    end
end
