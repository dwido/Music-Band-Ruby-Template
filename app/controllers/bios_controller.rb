class BiosController < ApplicationController
  # GET /bios
  # GET /bios.json
  def index
    @bios = Bio.all
    @title = "The Band"
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bios }
    end
  end

  # GET /bios/1
  # GET /bios/1.json
  def show
    @bio = Bio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @bio }
    end
  end

  # GET /bios/new
  # GET /bios/new.json
  def new
    @bio = Bio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @bio }
    end
  end

  # GET /bios/1/edit
  def edit
    @bio = Bio.find(params[:id])
  end

  # POST /bios
  # POST /bios.json
  def create
    @bio = Bio.new(params[:bio])

    respond_to do |format|
      if @bio.save
        format.html { redirect_to @bio, :notice => 'Bio was successfully created.' }
        format.json { render :json => @bio, :status => :created, :location => @bio }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bios/1
  # PUT /bios/1.json
  def update
    @bio = Bio.find(params[:id])

    respond_to do |format|
      if @bio.update_attributes(params[:bio])
        format.html { redirect_to @bio, :notice => 'Bio was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @bio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bios/1
  # DELETE /bios/1.json
  def destroy
    @bio = Bio.find(params[:id])
    @bio.destroy

    respond_to do |format|
      format.html { redirect_to bios_url }
      format.json { head :ok }
    end
  end
end
