class PressesController < ApplicationController
  before_filter :authenticate, :only => [:edit, :update]
  # GET /presses
  # GET /presses.json
  def index
    @presses = Press.all
    @title = "Press"
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @presses }
    end
  end

  # GET /presses/1
  # GET /presses/1.json
  def show
    @press = Press.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @press }
    end
  end

  # GET /presses/new
  # GET /presses/new.json
  def new
    @press = Press.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @press }
    end
  end

  # GET /presses/1/edit
  def edit
    @press = Press.find(params[:id])
  end

  # POST /presses
  # POST /presses.json
  def create
    @press = Press.new(params[:press])

    respond_to do |format|
      if @press.save
        format.html { redirect_to @press, notice: 'Press was successfully created.' }
        format.json { render json: @press, status: :created, location: @press }
      else
        format.html { render action: "new" }
        format.json { render json: @press.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /presses/1
  # PUT /presses/1.json
  def update
    @press = Press.find(params[:id])

    respond_to do |format|
      if @press.update_attributes(params[:press])
        format.html { redirect_to @press, notice: 'Press was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @press.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presses/1
  # DELETE /presses/1.json
  def destroy
    @press = Press.find(params[:id])
    @press.destroy

    respond_to do |format|
      format.html { redirect_to presses_url }
      format.json { head :ok }
    end
  end

  private
  
    def authenticate
      deny_access unless signed_in?
    end
end