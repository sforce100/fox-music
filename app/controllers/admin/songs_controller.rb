# encoding: utf-8

class Admin::SongsController < Admin::BaseAdminController
  # GET /admin/songs
  # GET /admin/songs.json
  def index
    @admin_songs = Admin::Song.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_songs }
    end
  end

  # GET /admin/songs/1
  # GET /admin/songs/1.json
  def show
    @admin_song = Admin::Song.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_song }
    end
  end

  # GET /admin/songs/new
  # GET /admin/songs/new.json
  def new
    @admin_song = Admin::Song.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_song }
    end
  end

  # GET /admin/songs/1/edit
  def edit
    @admin_song = Admin::Song.find(params[:id])
  end

  # POST /admin/songs
  # POST /admin/songs.json
  def create
    @admin_song = Admin::Song.new(params[:admin_song])

    respond_to do |format|
      if @admin_song.save
        format.html { redirect_to @admin_song, notice: 'Song was successfully created.' }
        format.json { render json: @admin_song, status: :created, location: @admin_song }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/songs/1
  # PUT /admin/songs/1.json
  def update
    @admin_song = Admin::Song.find(params[:id])

    respond_to do |format|
      if @admin_song.update_attributes(params[:admin_song])
        format.html { redirect_to @admin_song, notice: 'Song was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/songs/1
  # DELETE /admin/songs/1.json
  def destroy
    @admin_song = Admin::Song.find(params[:id])
    @admin_song.destroy

    respond_to do |format|
      format.html { redirect_to admin_songs_url }
      format.json { head :no_content }
    end
  end
end
