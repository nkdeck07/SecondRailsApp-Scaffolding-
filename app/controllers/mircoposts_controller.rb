class MircopostsController < ApplicationController
  # GET /mircoposts
  # GET /mircoposts.json
  def index
    @mircoposts = Mircopost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mircoposts }
    end
  end

  # GET /mircoposts/1
  # GET /mircoposts/1.json
  def show
    @mircopost = Mircopost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mircopost }
    end
  end

  # GET /mircoposts/new
  # GET /mircoposts/new.json
  def new
    @mircopost = Mircopost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mircopost }
    end
  end

  # GET /mircoposts/1/edit
  def edit
    @mircopost = Mircopost.find(params[:id])
  end

  # POST /mircoposts
  # POST /mircoposts.json
  def create
    @mircopost = Mircopost.new(params[:mircopost])

    respond_to do |format|
      if @mircopost.save
        format.html { redirect_to @mircopost, notice: 'Mircopost was successfully created.' }
        format.json { render json: @mircopost, status: :created, location: @mircopost }
      else
        format.html { render action: "new" }
        format.json { render json: @mircopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mircoposts/1
  # PUT /mircoposts/1.json
  def update
    @mircopost = Mircopost.find(params[:id])

    respond_to do |format|
      if @mircopost.update_attributes(params[:mircopost])
        format.html { redirect_to @mircopost, notice: 'Mircopost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mircopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mircoposts/1
  # DELETE /mircoposts/1.json
  def destroy
    @mircopost = Mircopost.find(params[:id])
    @mircopost.destroy

    respond_to do |format|
      format.html { redirect_to mircoposts_url }
      format.json { head :no_content }
    end
  end
end
