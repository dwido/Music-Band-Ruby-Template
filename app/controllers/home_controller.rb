class HomeController < ApplicationController
  def index
    @news = News.limit(3).sort_by(&:date).reverse
    @events = Event.where('dateofevent > ?', DateTime.now.beginning_of_day - 1).limit(3).sort_by(&:dateofevent)
    @cds = Cd.limit(1).reverse
    @gallery = (Gallery.where(:main_screen => true).length > 0)? Gallery.where(:main_screen => true)[0] : nil
  end

end
