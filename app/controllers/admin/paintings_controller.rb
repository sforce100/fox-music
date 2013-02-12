# encoding: utf-8

class Admin::PaintingsController < Admin::BaseAdminController
  # GET /admin/paintings
  # GET /admin/paintings.json
  def index
    @admin_paintings = Painting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_paintings }
    end
  end

  # GET /admin/paintings/1
  # GET /admin/paintings/1.json
  def show
    @admin_painting = Painting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_painting }
    end
  end

  # GET /admin/paintings/new
  # GET /admin/paintings/new.json
  def new
    @admin_painting = Painting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_painting }
    end
  end

  # GET /admin/paintings/1/edit
  def edit
    @admin_painting = Painting.find(params[:id])
  end

  # POST /admin/paintings
  # POST /admin/paintings.json
  def create
    @admin_painting = Painting.new(params[:painting])

    respond_to do |format|
      if @admin_painting.save
        format.html { redirect_to admin_painting_path(@admin_painting), notice: 'Painting was successfully created.' }
        format.json { render json: @admin_painting, status: :created, location: @admin_painting }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_painting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/paintings/1
  # PUT /admin/paintings/1.json
  def update
    @admin_painting = Painting.find(params[:id])

    respond_to do |format|
      if @admin_painting.update_attributes(params[:painting])
        format.html { redirect_to admin_painting_path(@admin_painting), notice: 'Painting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_painting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/paintings/1
  # DELETE /admin/paintings/1.json
  def destroy
    @admin_painting = Painting.find(params[:id])
    @admin_painting.destroy

    respond_to do |format|
      format.html { redirect_to admin_paintings_url }
      format.json { head :no_content }
    end
  end
end
