class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index
    @q = params[:q]
    if @q
      @locations = Location.where("address like ?", "%#{@q}%") 
    else
      if current_user.admin?
        @locations = Location.all.order(created_at: :desc)
      else
        @locations = current_user.locations.all.order(created_at: :desc)
      end
     # @locations = Location.where user_id: current_user.id
    end
    @numeroincendios = Location.where(tipo: "incendio").count
    @numeroinundacion = Location.where(tipo: "inundacion").count
    @numerogranizada = Location.where(tipo: "granizada").count
    @numerosequias = Location.where(tipo: "sequia").count
    @numeroterremotos = Location.where(tipo: "terremeto").count
    @numeroderrumbe = Location.where(tipo: "derrumbe").count
    @numerodeslizamientos = Location.where(tipo: "deslizamientos").count
    @incendiosenero =  Location.where("cast(strftime('%m', created_at) as int) = ?", 1).where(tipo: "incendio").count
    @incendiosfebrero = Location.where("cast(strftime('%m', created_at) as int) = ?", 2).where(tipo: "incendio").count
    @incendiosmarzo = Location.where("cast(strftime('%m', created_at) as int) = ?", 3).where(tipo: "incendio").count
    @incendiosabril = Location.where("cast(strftime('%m', created_at) as int) = ?", 4).where(tipo: "incendio").count
    @incendiosmayo = Location.where("cast(strftime('%m', created_at) as int) = ?", 5).where(tipo: "incendio").count
    @incendiosjunio = Location.where("cast(strftime('%m', created_at) as int) = ?", 6).where(tipo: "incendio").count
    @incendiosjulio = Location.where("cast(strftime('%m', created_at) as int) = ?", 7).where(tipo: "incendio").count
    @incendiosagosto = Location.where("cast(strftime('%m', created_at) as int) = ?", 8).where(tipo: "incendio").count
    @incendiosseptiembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 9).where(tipo: "incendio").count
    @incendiosoctubre = Location.where("cast(strftime('%m', created_at) as int) = ?", 10).where(tipo: "incendio").count
    @incendiosnoviembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 11).where(tipo: "incendio").count
    @incendiosdiciembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 12).where(tipo: "incendio").count
    @inundacionessenero = Location.where("cast(strftime('%m', created_at) as int) = ?", 1).where(tipo: "inundacion").count
    @inundacionesfebrero = Location.where("cast(strftime('%m', created_at) as int) = ?", 2).where(tipo: "inundacion").count
    @inundacionesmarzo = Location.where("cast(strftime('%m', created_at) as int) = ?", 3).where(tipo: "inundacion").count
    @inundacionesabril = Location.where("cast(strftime('%m', created_at) as int) = ?", 4).where(tipo: "inundacion").count
    @inundacionesmayo = Location.where("cast(strftime('%m', created_at) as int) = ?", 5).where(tipo: "inundacion").count
    @inundacionesjunio = Location.where("cast(strftime('%m', created_at) as int) = ?", 6).where(tipo: "inundacion").count
    @inundacionesjulio = Location.where("cast(strftime('%m', created_at) as int) = ?", 7).where(tipo: "inundacion").count
    @inundacionesagosto = Location.where("cast(strftime('%m', created_at) as int) = ?", 8).where(tipo: "inundacion").count
    @inundacionesseptiembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 9).where(tipo: "inundacion").count
    @inundacionesoctubre = Location.where("cast(strftime('%m', created_at) as int) = ?", 10).where(tipo: "inundacion").count
    @inundacionesnoviembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 11).where(tipo: "inundacion").count
    @inundacionesdiciembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 12).where(tipo: "inundacion").count
    @derrumbesenero = Location.where("cast(strftime('%m', created_at) as int) = ?", 1).where(tipo: "derrumbe").count
    @derrumbesfebrero = Location.where("cast(strftime('%m', created_at) as int) = ?", 2).where(tipo: "derrumbe").count
    @derrumbesmarzo = Location.where("cast(strftime('%m', created_at) as int) = ?", 3).where(tipo: "derrumbe").count
    @derrumbesabril = Location.where("cast(strftime('%m', created_at) as int) = ?", 4).where(tipo: "derrumbe").count
    @derrumbesmayo = Location.where("cast(strftime('%m', created_at) as int) = ?", 5).where(tipo: "derrumbe").count
    @derrumbesjunio = Location.where("cast(strftime('%m', created_at) as int) = ?", 6).where(tipo: "derrumbe").count
    @derrumbesulio = Location.where("cast(strftime('%m', created_at) as int) = ?", 7).where(tipo: "derrumbe").count
    @derrumbesagosto = Location.where("cast(strftime('%m', created_at) as int) = ?", 8).where(tipo: "derrumbe").count
    @derrumbesseptiembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 9).where(tipo: "derrumbe").count
    @derrumbesoctubre = Location.where("cast(strftime('%m', created_at) as int) = ?", 10).where(tipo: "derrumbe").count
    @derrumbesnoviembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 11).where(tipo: "derrumbe").count
    @derrumbesdiciembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 12).where(tipo: "derrumbe").count
    @deslizamientosenero = Location.where("cast(strftime('%m', created_at) as int) = ?", 1).where(tipo: "granizada").count
    @deslizamientosfebrero = Location.where("cast(strftime('%m', created_at) as int) = ?", 2).where(tipo: "granizada").count
    @deslizamientosmarzo = Location.where("cast(strftime('%m', created_at) as int) = ?", 3).where(tipo: "granizada").count
    @deslizamientosabril = Location.where("cast(strftime('%m', created_at) as int) = ?", 4).where(tipo: "granizada").count
    @deslizamientosmayo = Location.where("cast(strftime('%m', created_at) as int) = ?", 5).where(tipo: "granizada").count
    @deslizamientosjunio = Location.where("cast(strftime('%m', created_at) as int) = ?", 6).where(tipo: "granizada").count
    @deslizamientosjulio = Location.where("cast(strftime('%m', created_at) as int) = ?", 7).where(tipo: "granizada").count
    @deslizamientosagosto = Location.where("cast(strftime('%m', created_at) as int) = ?", 8).where(tipo: "granizada").count
    @deslizamientosseptiembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 9).where(tipo: "granizada").count
    @deslizamientosoctubre = Location.where("cast(strftime('%m', created_at) as int) = ?", 10).where(tipo: "granizada").count
    @deslizamientosnoviembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 11).where(tipo: "granizada").count
    @deslizamientosdiciembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 12).where(tipo: "granizada").count
    @terremotosenero = Location.where("cast(strftime('%m', created_at) as int) = ?", 1).where(tipo: "terremeto").count
    @terremotofebrero = Location.where("cast(strftime('%m', created_at) as int) = ?", 2).where(tipo: "terremeto").count
    @terremotomarzo = Location.where("cast(strftime('%m', created_at) as int) = ?", 3).where(tipo: "terremeto").count
    @terremotoabril = Location.where("cast(strftime('%m', created_at) as int) = ?", 4).where(tipo: "terremeto").count
    @terremotomayo = Location.where("cast(strftime('%m', created_at) as int) = ?", 5).where(tipo: "terremeto").count
    @terremotojunio = Location.where("cast(strftime('%m', created_at) as int) = ?", 6).where(tipo: "terremeto").count
    @iterremotojulio = Location.where("cast(strftime('%m', created_at) as int) = ?", 7).where(tipo: "terremeto").count
    @terremotoagosto = Location.where("cast(strftime('%m', created_at) as int) = ?", 8).where(tipo: "terremeto").count
    @terremotoseptiembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 9).where(tipo: "terremeto").count
    @terremotooctubre = Location.where("cast(strftime('%m', created_at) as int) = ?", 10).where(tipo: "terremeto").count
    @terremotonoviembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 11).where(tipo: "terremeto").count
    @terremotodiciembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 12).where(tipo: "terremeto").count
    @sequiaenero =  Location.where("cast(strftime('%m', created_at) as int) = ?", 1).where(tipo: "sequia").count
    @sequiafebrero = Location.where("cast(strftime('%m', created_at) as int) = ?", 2).where(tipo: "sequia").count
    @sequiamarzo = Location.where("cast(strftime('%m', created_at) as int) = ?", 3).where(tipo: "sequia").count
    @sequiaabril = Location.where("cast(strftime('%m', created_at) as int) = ?", 4).where(tipo: "sequia").count
    @sequiamayo = Location.where("cast(strftime('%m', created_at) as int) = ?", 5).where(tipo: "sequia").count
    @sequiajunio = Location.where("cast(strftime('%m', created_at) as int) = ?", 6).where(tipo: "sequia").count
    @sequiajulio = Location.where("cast(strftime('%m', created_at) as int) = ?", 7).where(tipo: "sequia").count
    @sequiaagosto = Location.where("cast(strftime('%m', created_at) as int) = ?", 8).where(tipo: "sequia").count
    @sequiaseptiembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 9).where(tipo: "sequia").count
    @sequiaoctubre = Location.where("cast(strftime('%m', created_at) as int) = ?", 10).where(tipo: "sequia").count
    @sequianoviembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 11).where(tipo: "sequia").count
    @sequiadiciembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 12).where(tipo: "sequia").count
    @emergenciasenero = Location.where("cast(strftime('%m', created_at) as int) = ?", 1).where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @emergenciasfebrero = Location.where("cast(strftime('%m', created_at) as int) = ?", 2).where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @emergenciasmarzo = Location.where("cast(strftime('%m', created_at) as int) = ?", 3).where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @emergenciasabril = Location.where("cast(strftime('%m', created_at) as int) = ?", 4).where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @emergenciasmayo = Location.where("cast(strftime('%m', created_at) as int) = ?", 5).where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @emergenciasjunio = Location.where("cast(strftime('%m', created_at) as int) = ?", 6).where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @emergenciasjulio = Location.where("cast(strftime('%m', created_at) as int) = ?", 7).where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @emergenciasagosto = Location.where("cast(strftime('%m', created_at) as int) = ?", 8).where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @emergenciasseptiembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 9).where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @emergenciasoctubre = Location.where("cast(strftime('%m', created_at) as int) = ?", 10).where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @emergenciasnoviembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 11).where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @emergenciasdiciembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 12).where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @anioactual = Time.now.year
    @emergenciaanual1 = Location.where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year - 3).count
    @emergenciaanual2 =  Location.where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year - 2).count
    @emergenciaanual3 =  Location.where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year - 1).count
    @emergenciaanual4 =  Location.where("cast(strftime('%Y', created_at) as int) = ?", Time.now.year).count
    @totalemergenciasenero = Location.where("cast(strftime('%m', created_at) as int) = ?", 1).count
    @totalemergenciasfebrero = Location.where("cast(strftime('%m', created_at) as int) = ?", 2).count
    @totalemergenciasmarzo = Location.where("cast(strftime('%m', created_at) as int) = ?", 3).count
    @totalemergenciasabril = Location.where("cast(strftime('%m', created_at) as int) = ?", 4).count
    @totalemergenciasmayo = Location.where("cast(strftime('%m', created_at) as int) = ?", 5).count
    @totalemergenciasjunio = Location.where("cast(strftime('%m', created_at) as int) = ?", 6).count
    @totalemergenciasjulio = Location.where("cast(strftime('%m', created_at) as int) = ?", 7).count
    @totalemergenciasagosto = Location.where("cast(strftime('%m', created_at) as int) = ?", 8).count
    @totalemergenciasseptiembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 9).count
    @totalemergenciasoctubre = Location.where("cast(strftime('%m', created_at) as int) = ?", 10).count
    @totalemergenciasnoviembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 11).count
    @totalemergenciasdiciembre = Location.where("cast(strftime('%m', created_at) as int) = ?", 12).count






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
      @recurso_evento = RecursoEvento.new
      #@recurso_evento.location = @location
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
    @location = current_user.locations.new(location_params)
    #@location = Location.new(location_params)
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
