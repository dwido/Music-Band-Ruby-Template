class PagesController < ApplicationController
  def audio
    @cds = Cd.all
    @title = "Audio"
  end

  def video
  end

  def contact
    @user = User.new
    @title = "Contact"
  end

  def gallery
    @title = "Gallery"
    @galleries = Gallery.all
    @app_images = AppImage.where(:main_screen => false);
  end

end
