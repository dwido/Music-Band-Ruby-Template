class TracksController < ApplicationController
  def create
    @cd = Cd.find(params[:cd_id])
    @track = @cd.tracks.create(params[:track])
    redirect_to cd_path(@cd)
  end
end
