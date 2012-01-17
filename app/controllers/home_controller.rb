class HomeController < ApplicationController
  def index
    @news = News.limit(3).sort_by(&:date).reverse
    @events = Event.limit(3).sort_by(&:dateofevent).reverse
    @cds = Cd.limit(1).reverse
    @main_images = AppImage.where(:main_screen => true)
  end

end
