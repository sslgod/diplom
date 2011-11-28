class KbodiesController < ApplicationController
  # GET /kbodies
  # GET /kbodies.json
  def index
     @kalplan_tltle = KalplanTltle.find(params[:kalplan_tltle_id])
    @kbodies = @kalplan_tltle.Kbodies.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kbodies }
    end
  end

  # GET /kbodies/1
  # GET /kbodies/1.json
  def show
    @kbody = Kbody.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kbody }
    end
  end

  # GET /kbodies/new
  # GET /kbodies/new.json
  def new
    @kalplan_tltle = KalplanTltle.find(params[:kalplan_tltle_id])
    @kbody = @kalplan_tltle.Kbodies.new
   

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kbody }
    end
  end

  # GET /kbodies/1/edit
  def edit
    @kbody = Kbody.find(params[:id])
  end

  # POST /kbodies
  # POST /kbodies.json
  def create
    @kalplan_tltle = KalplanTltle.find(params[:kalplan_tltle_id])
    @kbody = @kalplan_tltle.Kbodies.new(params[:kbody])

    respond_to do |format|
      if @kbody.save
        format.html { redirect_to :kalplan_tltle_kbodies, notice: 'Kbody was successfully created.' }
        format.json { render json: @kbody, status: :created, location: @kbody }
      else
        format.html { render action: "new" }
        format.json { render json: @kbody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kbodies/1
  # PUT /kbodies/1.json
  def update
    @kbody = Kbody.find(params[:id])

    respond_to do |format|
      if @kbody.update_attributes(params[:kbody])
        format.html { redirect_to @kbody, notice: 'Kbody was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @kbody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kbodies/1
  # DELETE /kbodies/1.json
  def destroy
    @kalplan_tltle = KalplanTltle.find(params[:kalplan_tltle_id])
    @kbody = Kbody.find(params[:id])
    @kbody.destroy

    respond_to do |format|
      format.html { redirect_to :kalplan_tltle_kbodies }
      format.json { head :ok }
    end
  end
end
