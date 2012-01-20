class PagesController < ApplicationController
  def audio
    @cds = Cd.all
    @title = "Audio"
  end

  def video
  end

  def contact
    @fan = Fan.new
    @title = "Contact"
  end

  def gallery
    @title = "Gallery"
    @galleries = Gallery.where(:main_screen => false);
  end

end
