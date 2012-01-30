class FansController < ApplicationController
  # GET /fans
  # GET /fans.json
  def index
    @fans = Fan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fans }
    end
  end

  # GET /fans/1
  # GET /fans/1.json
  def show
    @fan = Fan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fan }
    end
  end

  # GET /fans/new
  # GET /fans/new.json
  def new
    @fan = Fan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fan }
    end
  end

  # GET /fans/1/edit
  def edit
    @fan = Fan.find(params[:id])
  end

  # POST /fans
  # POST /fans.json
  def create
    @fan = Fan.new(params[:fan])

    if @fan.save
      flash[:success] = "Thank you for joining our list!"
      redirect_to("/pages/contact/")
    else
      flash[:error] = @fan.errors.first
      redirect_to("/pages/contact/")
    end
  end

  # PUT /fans/1
  # PUT /fans/1.json
  def update
    @fan = Fan.find(params[:id])

    respond_to do |format|
      if @fan.update_attributes(params[:fan])
        format.html { redirect_to @fan, notice: 'Fan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fans/1
  # DELETE /fans/1.json
  def destroy
    @fan = Fan.find(params[:id])
    @fan.destroy

    respond_to do |format|
      format.html { redirect_to fans_url }
      format.json { head :ok }
    end
  end
end
