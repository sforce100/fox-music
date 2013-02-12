#encoding: utf-8

class Admin::BaseAdminController < ApplicationController
  before_filter :authenticate_admin!
  layout "admin"
end
