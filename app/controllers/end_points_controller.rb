class EndPointsController < ApplicationController
  # GET /end_points
  # GET /end_points.json
  def index
    @end_points = EndPoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @end_points }
    end
  end

  # GET /end_points/1
  # GET /end_points/1.json
  def show
    @end_point = EndPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @end_point }
    end
  end

  # GET /end_points/new
  # GET /end_points/new.json
  def new
    @end_point = EndPoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @end_point }
    end
  end

  # GET /end_points/1/edit
  def edit
    @end_point = EndPoint.find(params[:id])
  end

  # POST /end_points
  # POST /end_points.json
  def create
    @end_point = EndPoint.new(params[:end_point])

    respond_to do |format|
      if @end_point.save
        format.html { redirect_to @end_point, notice: 'End point was successfully created.' }
        format.json { render json: @end_point, status: :created, location: @end_point }
      else
        format.html { render action: "new" }
        format.json { render json: @end_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /end_points/1
  # PUT /end_points/1.json
  def update
    @end_point = EndPoint.find(params[:id])

    respond_to do |format|
      if @end_point.update_attributes(params[:end_point])
        format.html { redirect_to @end_point, notice: 'End point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @end_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /end_points/1
  # DELETE /end_points/1.json
  def destroy
    @end_point = EndPoint.find(params[:id])
    @end_point.destroy

    respond_to do |format|
      format.html { redirect_to end_points_url }
      format.json { head :no_content }
    end
  end
end
