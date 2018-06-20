class InstitucionsController < ApplicationController
  before_action :set_institucion, only: [:show, :edit, :update, :destroy]

  # GET /institucions
  # GET /institucions.json
  def index
    @q = params[:q]
    if @q
      @institucions = Institucion.where("nombre like ?", "%#{@q}%") 
    else
      if current_user.admin?
        @institucions = Institucion.all.order(created_at: :desc)
      else
        @institucions = Institucion.where user_id: current_user.id
      end
    end
    @publica = Institucion.where(institucionpublica: 1).count
    @privada = Institucion.where(institucionprivada: true).count
    @sinlucro = Institucion.where(sinfinesdelucro: 1).count
    @voluntarios = Institucion.where(grupovoluntario: true).count
    @actransporte = Institucion.where(serviciotransporte: true).count
    @busquedaperros = Institucion.where(serviciobusquedaperros: true).count
    @telecomunicaciones  = Institucion.where(serviciotelecomunicaciones: true).count
    @evaluaciondaños =  Institucion.where(servicioevaluacion: true).count
    @serviciospublicos  = Institucion.where(serviciosaludysaneamiento: true).count
    @manejomateriales  = Institucion.where(serviciomanejomateriales: true).count
    @salvamientoacuatico  = Institucion.where(salvamientoacuatico: true).count
    @busquedaaltura = Institucion.where(serviciobusquedayrescateenaltura: true).count
    @salud = Institucion.where(serviciosaludysaneamiento: true).count
    @incendioshurbanos = Institucion.where(serviciosincendiosurbanos: true).count
    @incendiosforestales = Institucion.where(servicioincendioforestal: true).count

    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'institucions/reporte', pdf: 'reporte', layaout: 'pdf.html'}
    end
  end

  # GET /institucions/1
  # GET /institucions/1.json
  def show
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'institucions/reporte_show', pdf: 'reporte', layaout: 'pdf.html'}
    end
  end

  # GET /institucions/new
  def new
    @institucion = Institucion.new
  end

  # GET /institucions/1/edit
  def edit
  end

  # POST /institucions
  # POST /institucions.json
  def create
    @institucion = current_user.institucions.new(institucion_params)
    respond_to do |format|
      if @institucion.save
        format.html { redirect_to @institucion, notice: 'Institucion was successfully created.' }
        format.json { render :show, status: :created, location: @institucion }
      else
        format.html { render :new }
        format.json { render json: @institucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institucions/1
  # PATCH/PUT /institucions/1.json
  def update
    respond_to do |format|
      if @institucion.update(institucion_params)
        format.html { redirect_to @institucion, notice: 'Institucion was successfully updated.' }
        format.json { render :show, status: :ok, location: @institucion }
      else
        format.html { render :edit }
        format.json { render json: @institucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institucions/1
  # DELETE /institucions/1.json
  def destroy
    @institucion.destroy
    respond_to do |format|
      format.html { redirect_to institucions_url, notice: 'Institucion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institucion
      @institucion = Institucion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institucion_params
      params.require(:institucion).permit(:nombre, :personaencargada, :cargo, :direccion, :departamento, :municipio, :localidad, :telefono, :fax, :paginweb, :nombrecontacto, :cargi, :tiempoencargo, :direccion, :telefono, :celular, :email, :institucionpublica, :detalle, :institucionprivada, :detalleprivado, :sinfinesdelucro, :detallesinfinesdelucro, :grupovoluntario, :detalle, :coe, :coenacional, :coedepartalemtal, :coemunicipal, :mesassectoriales, :salud, :educacion, :aguaysaneamiento, :seguridadalimentaria, :gobernabilidadproteccion, :albergues, :recuperacion, :comisionesdepartales, :detallecomisiones, :comisionesmunicipalesCOEM, :detallesCOEM, :dgr, :ugr, :unete, :grus, :consorciodeong, :observatorios, :detallesobservatorio, :local, :detalleslocal, :otros, :otrosdetalle, :mandatogestionriesgo, :mandatoseguridad, :mandatootro, :mandatodetalle, :especialidadesmandato, :serviciotransporte, :serviciobusquedaperros, :serviciotelecomunicaciones, :serviciosincendiosurbanos, :servicioevaluacion, :servicioincendioforestal, :serviciosaludysaneamiento, :serviciomanejomateriales, :serviciobusquedayrescate, :serviciospublicos, :serviciobusquedayrescateenaltura, :servicioseguridad, :serviciosalvamiento, :salvamientoacuatico, :manejogeneral, :serviciodetalle, :respuestanaturales, :respuestahidrometeorologicas, :respuestainundaciones, :respuestariadas, :respuestavientosfuertes, :respuestageologicas, :respuestadeslizamiento, :respuestaderrumber, :respuestasismos, :respuestaotros, :respuestadetalle, :socionatural, :socioambiental, :socioincendio, :sociootro, :sociodetalle, :antropicas, :antropicasincendios, :antropicasotros, :antropicas, :otrossocios, :otrosdetallessocios, :eventosfrecuentes, :plandecontingencia, :planencasosi, :tareasprotocolo, :porcentajerespuesta, :plandeemergencia, :encasosiemergencia, :tareasemergencia, :protocolodeaccion, :encasosiprotocolo, :areaflujo, :arealogistica, :areacomunicaciones, :areatransporte, :areaevaluaciondemergencia, :areadocumentacion, :areaemergenciamedica, :areamovilizacion, :areaoperaciones, :areaseguridad, :areaotros, :areadetalle, :activacionesautomaticas, :medioradio, :mediotv, :mediofrecuencia, :mediollamadas, :otros, :mediosdetalles, :requerimientosuperios, :requerimientosuperiosdetalle, :requerimientootrodetalle, :observaciones, :situacionesactual, :trabajosiniciales, :caracteristicasestructurales, :consideracionespeciales, :estadotiempo, :mapasderiesgo, :seguridadyproteccion, :planosdellugar, :evacuaionemergencia, :estadisticas, :temasdesalud, :accionotro, :acciondetalle, :capacitadosincidentes, :capacitadosobservaciones, :coberturageogracia, :brazosoperativosareas, :recursoadministrativo, :recursoadministrativo, :recursosoperativo, :recursosoperativopersonas, :operativoactivo, :operativoactivopersonas, :pasivosenreserva, :pasivosenreservapersonas, :primap, :primapersonas, :crecl, :creclpersonas, :brec, :brecpersonas, :especidalidadrescateactuatico, :especialidadrescatepersonas, :manejadorperros, :manejadorperrospersona, :cbsci, :cbscipersonas, :extincionincendiosurbanos, :extincionserviciosurbanospersonas, :incendiosforestales, :incendiosforestalespersonas, :medicos, :numeromedicos, :sbv, :sbv, :appa, :appapersonas, :cpi, :cpipersonas, :especilidadcomunicaciones, :especidalidadcomunicacionespersonas, :especialidadlogistica, :especialidadlogicasticapersonas, :ambulanciascantidad, :ambulanciasestado, :ambulanciascapacidadpersonas, :ambulanciasobservaciones, :transliviano, :translivianoestado, :translivianopersonas, :translivianobservaciones, :transpesado, :transpesadoestado, :transpesadopersonas, :transpesadosobservaciones, :patrullas, :patrullasestado, :patrullaspersonas, :patrullasobservaciones, :carrosbomberos, :carrosbomberosestado, :carrosbomberospersonas, :carrosbomberosobservaciones, :cisternas, :cisternasestado, :cisternaspersonas, :cisternasobservaciones, :maquinariapesada, :maquinariapesadaestado, :maquinariapesadapersonas, :maquinariapesadaobservaciones, :equiporadios, :equiporadios, :equiporadioobservaciones, :comunicacionesatelital, :comunicacionsatelital, :satelitalobservaciones, :gps, :gpsestado, :gpsobservaciones)
    end
end
