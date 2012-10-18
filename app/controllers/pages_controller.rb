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

  def dashboard
    @cds = Cd.all
  end

  def sepharadic_music
    @title = "Sephardic Jewish Music New York"
  end
  
  def north_african_drumming
    @title = "North African and Arabic Drumming New York"
  end 
end
