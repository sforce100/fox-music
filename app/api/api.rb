# $:.push('../../lib/swagger')
require "grape-swagger"

module SwaggerDemo

  class API < Grape::API

    # version 'v1', :using => :path
    content_type :json, "application/json;charset=UTF-8"
    format :json

    before do
        header['Access-Control-Allow-Origin'] = '*'
        header['Access-Control-Request-Method'] = '*'
    end

    resource 'users' do

      # desc "这里是描述users get", {
      #   :notes => "get me a correct user id",
      #   :http_codes => {
      #     403 => "invalid pony",
      #     405 => "no ponies left!"
      #   },
      #   :nickname => 'helloworld',
      #   :rc => { "HelloMessage" => {:id => "HelloMessage", :properties => {:id => {:type => "long"}, :name => {:type => "string"}}}}
      # }
      # params do
      #   requires :id, :type => String, :desc => "User ID."
      # end
      # get "/:id" do
      #   puts "find one user"
      #   puts "user id : "+params[:id]
      #   user = UserBaseInfo.find(params[:id], :select => "id, qq, icompany_id")
      #   company = InsuranceCompany.find(user.icompany_id, :select => "short_name")
      #   { "user_base_info" => { "id" => user.id, "qq" => user.qq, "company_name" => company.short_name}}
      # end

      get "/profiles" do
        # ids = params[:ids].blank? ? [] : params[:ids].split(',').map { |i| i.to_i }
        # users = UserBaseInfo.where("id IN(?)", ids).select("id, qq, icompany_id")
        # cids = users.map { |u| u.icompany_id }
        # companys = InsuranceCompany.where("id IN(?)", cids).select("short_name")
        # infos = []
        # users.each do |u|
        #   _info = { "id" => u.id, "qq" => u.qq }
        #   if u.icompany_id
        #     companys.each do |c|
        #       _info["company_name"] = c.short_name
        #     end
        #   end
        #   infos << _info
        # end
        # { :users => infos }.to_json
        { :users => 123}
      end

    # end

      # get "/:id" do
      #   UserOnLine.find(params[:id], :select => "userid, on_line_status")
      # end

      get "/online" do
        # ids = params[:ids].blank? ? [] : params[:ids].split(',').map { |i| i.to_i }
        # onlines = UserOnLine.where("userid IN(?)",ids).select("userid, on_line_status")
        # { "online" => onlines.map { |o| {"status" => o.on_line_status, "userid" => o.userid} } }.to_json
        { :users => 567}
      end

    end

    resource 'notices' do

      post "/" do

      end

    end

  end


  class Root < Grape::API
    format :json
    before do
        header['Access-Control-Allow-Origin'] = '*'
        header['Access-Control-Request-Method'] = '*'
    end
    mount SwaggerDemo::API
    add_swagger_documentation :api_version => "v1", :markdown => true
  end

end