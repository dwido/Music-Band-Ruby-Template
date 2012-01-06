class PagesController < ApplicationController
  def audio
    @cds = Cd.all
  end

  def video
  end

  def contact
  end

end
