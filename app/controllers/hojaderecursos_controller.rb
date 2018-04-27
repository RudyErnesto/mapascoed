class HojaderecursosController < ApplicationController
  before_action :set_hojaderecurso, only: [:show, :edit, :update, :destroy]

  # GET /hojaderecursos
  # GET /hojaderecursos.json
  def index
    @hojaderecursos = Hojaderecurso.all
    @palabra = ''
    @palabra = params[:palabra]
    @hojaderecurso = Hojaderecurso.where("nombrequipo LIKE '#{@palabra}%'")
  end

  # GET /hojaderecursos/1
  # GET /hojaderecursos/1.json
  def show
  end

  # GET /hojaderecursos/new
  def new
    @hojaderecurso = Hojaderecurso.new
  end

  # GET /hojaderecursos/1/edit
  def edit
  end

  # POST /hojaderecursos
  # POST /hojaderecursos.json
  def create
    @hojaderecurso = Hojaderecurso.new(hojaderecurso_params)

    respond_to do |format|
      if @hojaderecurso.save
        format.html { redirect_to @hojaderecurso, notice: 'Hojaderecurso was successfully created.' }
        format.json { render :show, status: :created, location: @hojaderecurso }
      else
        format.html { render :new }
        format.json { render json: @hojaderecurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hojaderecursos/1
  # PATCH/PUT /hojaderecursos/1.json
  def update
    respond_to do |format|
      if @hojaderecurso.update(hojaderecurso_params)
        format.html { redirect_to @hojaderecurso, notice: 'Hojaderecurso was successfully updated.' }
        format.json { render :show, status: :ok, location: @hojaderecurso }
      else
        format.html { render :edit }
        format.json { render json: @hojaderecurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hojaderecursos/1
  # DELETE /hojaderecursos/1.json
  def destroy
    @hojaderecurso.destroy
    respond_to do |format|
      format.html { redirect_to hojaderecursos_url, notice: 'Hojaderecurso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hojaderecurso
      @hojaderecurso = Hojaderecurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hojaderecurso_params
      params.require(:hojaderecurso).permit(:equiposdespleagados, :personasdesplegados, :vehiculosdesplegados, :identificadorequipo, :nombrequipo, :numeropersonas, :numeroperros, :categoriarecursos, :busquedatecnica, :recatevehicula, :rescatevertical, :atencionPrehospitalaria, :rescateestrucurascolapsadas, :incendioestructura, :apoyoCCOPC, :apoyologistico, :especofiquelogistico, :otrascapacidades, :vehiculo, :tipovehiculo, :comida, :tiempocomida, :fechavigenciaformulario, :tiemporespesta, :baseoperaciones, :baseoperacionesespecifique, :capacidadmonitoreo, :transportepersonas, :transporteperrros, :equipamiento, :equipamientoespecial, :gasolina, :preciogasolina, :diesel, :preciodiesel, :comida, :agua, :requerimientoespacioenCCO, :otrorequerimientologistico, :contacto1nombre, :contacto1telefono, :contacto1correo, :contacto2nombre, :contacto2celular, :contacto2correo, :direccionbasedeoperaciones, :basedeoperacionestelefono, :frecuenciaradiobase, :cordenadasbasedecimal, :cordenadasbaseotroformato, :formulariocompletadofecha, :nombre, :gradoycargo)
    end
end
