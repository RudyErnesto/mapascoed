class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index
    @q = params[:q]
    if @q
      @locations = Location.where("address like ?", "%#{@q}%") 
    else
      @locations = Location.all
    end
    @numeroincendios = Location.where(tipo: "incendio").count
    @numeroinundacion = Location.where(tipo: "inundacion").count
    @numerogranizada = Location.where(tipo: "granizada").count
    @numerosequias = Location.where(tipo: "sequia").count
    @numeroterremotos = Location.where(tipo: "terremeto").count
    @numeroderrumbe = Location.where(tipo: "derrumbe").count
    @numerodeslizamientos = Location.where(tipo: "deslizamientos").count
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
    marker.lat location.latitude
    marker.lng location.longitude
    marker.infowindow location.description
    marker.json({title: location.title})
    end
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'locations/reporte', pdf: 'reporte', layaout: 'pdf.html'}
    end
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
      @hash = Gmaps4rails.build_markers(@location) do |locations, marker|
      marker.lat locations.latitude
      marker.lng locations.longitude
      marker.infowindow locations.description
      marker.json({title: locations.title})
      end
      
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:latitude, :longitude, :address, :description, :title, :tipo, :fecha, :evanicial, :ciresponsable, :resumenacciones)
    end
end
