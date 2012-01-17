class AppImagesController < ApplicationController
  # GET /app_images
  # GET /app_images.json
  def index
    @app_images = AppImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @app_images }
    end
  end

  # GET /app_images/1
  # GET /app_images/1.json
  def show
    @app_image = AppImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @app_image }
    end
  end

  # GET /app_images/new
  # GET /app_images/new.json
  def new
    @app_image = AppImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @app_image }
    end
  end

  # GET /app_images/1/edit
  def edit
    @app_image = AppImage.find(params[:id])
  end

  # POST /app_images
  # POST /app_images.json
  def create
    @app_image = AppImage.new(params[:app_image])

    respond_to do |format|
      if @app_image.save
        format.html { redirect_to @app_image, notice: 'App image was successfully created.' }
        format.json { render json: @app_image, status: :created, location: @app_image }
      else
        format.html { render action: "new" }
        format.json { render json: @app_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /app_images/1
  # PUT /app_images/1.json
  def update
    @app_image = AppImage.find(params[:id])

    respond_to do |format|
      if @app_image.update_attributes(params[:app_image])
        format.html { redirect_to @app_image, notice: 'App image was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @app_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_images/1
  # DELETE /app_images/1.json
  def destroy
    @app_image = AppImage.find(params[:id])
    @app_image.destroy

    respond_to do |format|
      format.html { redirect_to app_images_url }
      format.json { head :ok }
    end
  end
end
