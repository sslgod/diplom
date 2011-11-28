class KalplanTltlesController < ApplicationController
  # GET /kalplan_tltles
  # GET /kalplan_tltles.json
  def index
    @kalplan_tltles = KalplanTltle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kalplan_tltles }
    end
  end

  # GET /kalplan_tltles/1
  # GET /kalplan_tltles/1.json
  def show
    @kalplan_tltle = KalplanTltle.find(params[:id])
   

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kalplan_tltle }
    end
  end
  
 

  # GET /kalplan_tltles/new
  # GET /kalplan_tltles/new.json
  def new
    @kalplan_tltle = current_teacher.KalplanTltles.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kalplan_tltle }
    end
  end
  
  
  #def addbody
   # @kalplan_tltle = current_teacher.KalplanTltles.new(params[:kalplan_tltle])
    #@kalplan_tltle = @kalplan_tltle.KalplanBodies.new
  #end

  # GET /kalplan_tltles/1/edit
  def edit
    @kalplan_tltle = KalplanTltle.find(params[:id])
  end

  # POST /kalplan_tltles
  # POST /kalplan_tltles.json
  def create
    @kalplan_tltle = current_teacher.KalplanTltles.new(params[:kalplan_tltle])

    respond_to do |format|
      if @kalplan_tltle.save
        format.html { redirect_to @kalplan_tltle, notice: 'Kalplan tltle was successfully created.' }
        format.json { render json: @kalplan_tltle, status: :created, location: @kalplan_tltle }
      else
        format.html { render action: "new" }
        format.json { render json: @kalplan_tltle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kalplan_tltles/1
  # PUT /kalplan_tltles/1.json
  def update
    @kalplan_tltle = KalplanTltle.find(params[:id])

    respond_to do |format|
      if @kalplan_tltle.update_attributes(params[:kalplan_tltle])
        format.html { redirect_to @kalplan_tltle, notice: 'Kalplan tltle was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @kalplan_tltle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kalplan_tltles/1
  # DELETE /kalplan_tltles/1.json
  def destroy
    @kalplan_tltle = KalplanTltle.find(params[:id])
    @kalplan_tltle.destroy

    respond_to do |format|
      format.html { redirect_to kalplan_tltles_url }
      format.json { head :ok }
    end
  end
  
  
  def newkbody
    @kalplan_tltle = KalplanTltle.find(params[:id])
    #@kalplan_body = KalplanTltle.find(params[:id]).KalplanBodies.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kalplan_body }
    end
  end
  
  def kalplanbody
     @kalplan_tltle = KalplanTltle.find(params[:id])
     
    
  end
end
