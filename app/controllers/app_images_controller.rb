class AppImagesController < ApplicationController
  def create
    @gallery = Gallery.find(params[:gallery_id])
    @app_image = @gallery.app_images.create(params[:app_image])
    redirect_to gallery_path(@gallery)
  end

  # GET /bios/1/edit
  def edit
    @gallery = Gallery.find(params[:gallery_id])
    @app_image = AppImage.find(params[:id])
  end

  def destroy
    @gallery = Gallery.find(params[:gallery_id])
    @app_image = @gallery.app_images.find(params[:id])
    @app_image.destroy
    redirect_to gallery_path(@gallery)
  end  
end
