class KplansController < ApplicationController
  # GET /kplans
  # GET /kplans.json
  before_filter :authenticate_teacher!
  def index
    @kplans = Kplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @kplans }
    end
  end

  # GET /kplans/1
  # GET /kplans/1.json
  def show
    @kplan = Kplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @kplan }
    end
  end

  # GET /kplans/new
  # GET /kplans/new.json
  def new
    @kplan = Kplan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @kplan }
    end
  end

  # GET /kplans/1/edit
  def edit
    @kplan = Kplan.find(params[:id])
  end

  # POST /kplans
  # POST /kplans.json
  def create
    @kplan = Kplan.new(params[:kplan])

    respond_to do |format|
      if @kplan.save
        format.html { redirect_to @kplan, :notice => 'Kplan was successfully created.' }
        format.json { render :json => @kplan, :status => :created, :location => @kplan }
      else
        format.html { render :action => "new" }
        format.json { render :json => @kplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kplans/1
  # PUT /kplans/1.json
  def update
    @kplan = Kplan.find(params[:id])

    respond_to do |format|
      if @kplan.update_attributes(params[:kplan])
        format.html { redirect_to @kplan, :notice => 'Kplan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @kplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kplans/1
  # DELETE /kplans/1.json
  def destroy
    @kplan = Kplan.find(params[:id])
    @kplan.destroy

    respond_to do |format|
      format.html { redirect_to kplans_url }
      format.json { head :ok }
    end
  end
end
