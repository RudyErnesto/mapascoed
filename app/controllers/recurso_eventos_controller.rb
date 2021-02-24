class RecursoEventosController < ApplicationController
  before_action :set_recurso_evento, only: [:show, :edit, :update, :destroy]

  # GET /recurso_eventos
  # GET /recurso_eventos.json
  def index
    @q = params[:q]
    if @q
      @recurso_eventos = RecursoEvento.where("asignadoa like ?", "%#{@q}%") 
    else
      @recurso_eventos = RecursoEvento.all
    end
    @disponibles = RecursoEvento.where(estado: true).count
    @enuso = RecursoEvento.where(estado: false).count
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'recurso_eventos/reporte', pdf: 'reporte', layaout: 'pdf.html'}
    end
  end

  # GET /recurso_eventos/1
  # GET /recurso_eventos/1.json
  def show
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'locations/reporte', pdf: 'reporte', layaout: 'pdf.html'}
    end
  end

  # GET /recurso_eventos/new
  def new
    @recurso_evento = RecursoEvento.new
  end

  # GET /recurso_eventos/1/edit
  def edit
  end

  # POST /recurso_eventos
  # POST /recurso_eventos.json
  def create
    @recurso_evento = RecursoEvento.new(recurso_evento_params)
    location = Location.find(params[:recurso_evento][:location_id])
    @recurso_evento = location.recursoeventos.build(funcionario_params)
    @recurso_evento.user = current_user
    respond_to do |format|
      if @recurso_evento.save
        format.html { redirect_to @recurso_evento, notice: 'Recurso evento was successfully created.' }
        format.json { render :show, status: :created, location: @recurso_evento }
      else
        format.html { render :new }
        format.json { render json: @recurso_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recurso_eventos/1
  # PATCH/PUT /recurso_eventos/1.json
  def update
    respond_to do |format|
      if @recurso_evento.update(recurso_evento_params)
        format.html { redirect_to @recurso_evento, notice: 'Recurso evento was successfully updated.' }
        format.json { render :show, status: :ok, location: @recurso_evento }
      else
        format.html { render :edit }
        format.json { render json: @recurso_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recurso_eventos/1
  # DELETE /recurso_eventos/1.json
  def destroy
    @recurso_evento.destroy
    respond_to do |format|
      format.html { redirect_to recurso_eventos_url, notice: 'Recurso evento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recurso_evento
      @recurso_evento = RecursoEvento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recurso_evento_params
      params.require(:recurso_evento).permit(:solicitado, :fechapedido, :clase, :tipo, :fechallegada, :institucion, :matricula, :numeropersonas, :estado, :asignadoa, :desmovilizadopor, :fechadesmovilizacion, :observaciones)
    end
end
