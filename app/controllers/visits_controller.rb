class VisitsController < ApplicationController

  before_action :get_location
  before_action :set_visit, only: [:edit, :update, :destroy]

  # GET /visits
  # GET /visits.json
  def index
    @visits = @location.visits
  end

  # GET /visits/1
  # GET /visits/1.json
  def show
    @visit = @location.visits.includes(:questions).find(params[:id])
  end

  # GET /visits/new
  def new
    # @visit = Visit.new
    @visit = @location.visits.build
  end

  # GET /visits/1/edit
  def edit
  end

  # POST /visits
  # POST /visits.json
  def create
    # @visit = Visit.new(visit_params)
    @visit = @location.visits.build

    respond_to do |format|
      if @visit.save
        format.html { redirect_to @visit, notice: 'Visit was successfully created.' }
        format.json { render :show, status: :created, location: @visit }
      else
        format.html { render :new }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visits/1
  # PATCH/PUT /visits/1.json
  def update
    respond_to do |format|
      if @visit.update(visit_params)
        format.html { redirect_to @visit, notice: 'Visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @visit }
      else
        format.html { render :edit }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visits/1
  # DELETE /visits/1.json
  def destroy
    @visit.destroy
    respond_to do |format|
      format.html { redirect_to visits_url, notice: 'Visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit
      @visit = Visit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visit_params
      params.require(:visit).permit(:location_id)
    end

    def get_location
      @location = Location.find(params[:location_id])
    end
end
