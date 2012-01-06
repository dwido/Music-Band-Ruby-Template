class CdsController < ApplicationController
  # GET /cds
  # GET /cds.json
  def index
    @cds = Cd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cds }
    end
  end

  # GET /cds/1
  # GET /cds/1.json
  def show
    @cd = Cd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cd }
    end
  end

  # GET /cds/new
  # GET /cds/new.json
  def new
    @cd = Cd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cd }
    end
  end

  # GET /cds/1/edit
  def edit
    @cd = Cd.find(params[:id])
  end

  # POST /cds
  # POST /cds.json
  def create
    @cd = Cd.new(params[:cd])

    respond_to do |format|
      if @cd.save
        format.html { redirect_to @cd, notice: 'Cd was successfully created.' }
        format.json { render json: @cd, status: :created, location: @cd }
      else
        format.html { render action: "new" }
        format.json { render json: @cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cds/1
  # PUT /cds/1.json
  def update
    @cd = Cd.find(params[:id])

    respond_to do |format|
      if @cd.update_attributes(params[:cd])
        format.html { redirect_to @cd, notice: 'Cd was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cds/1
  # DELETE /cds/1.json
  def destroy
    @cd = Cd.find(params[:id])
    @cd.destroy

    respond_to do |format|
      format.html { redirect_to cds_url }
      format.json { head :ok }
    end
  end
end
