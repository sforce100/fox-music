# encoding: utf-8

class Admin::VideosController < Admin::BaseAdminController
  def index
    @admin_videos = Video.find :all
  end
  
  def new
    @admin_video = Video.new
  end
  
  def create
    @admin_video = Video.new(params[:admin_video])
    if @admin_video.save
      @admin_video.convert
      flash[:notice] = 'Video has been uploaded'
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end
  
  def show
    @admin_video = Video.find(params[:id])
  end
end
