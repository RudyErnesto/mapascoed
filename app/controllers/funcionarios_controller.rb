class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: [:show, :edit, :update, :destroy]

  # GET /funcionarios
  # GET /funcionarios.json
  def index
    @q = params[:q]
    if @q
      @funcionarios = Funcionario.where("nombre like ?", "%#{@q}%") 
    else
      if current_user.admin?
        @funcionarios = Funcionario.all.order(created_at: :desc)
        @materiaspeligroso = Funcionario.all.where(materiaspeligrosas: true).count
        @estructurascolapsadas = Funcionario.all.where(estructurascolapsadas: true).count
        @busquedayrescate = Funcionario.all.where(busquedayrescate: true).count
        @rescateacuatico = Funcionario.all.where(rescateacuatico: true).count
        @manejadordeperros = Funcionario.all.where(manejadordeperros: true).count
        @extinciondeincendiosurbanos = Funcionario.all.where(extinciondeincendiosurbanos: true).count

      else
        @manejadordeperros = current_user.funcionarios.where(manejadordeperros: true).count
        @funcionarios = current_user.funcionarios.all.order(created_at: :desc)
        @materiaspeligroso = current_user.funcionarios.where(materiaspeligrosas: true).count
        @estructurascolapsadas = current_user.funcionarios.where(estructurascolapsadas: true).count
        @busquedayrescate = current_user.funcionarios.where(busquedayrescate: true).count
        @rescateacuatico = current_user.funcionarios.where(rescateacuatico: true).count
        @extinciondeincendiosurbanos = current_user.funcionarios.where(extinciondeincendiosurbanos: true).count

      end
    end

  end

  # GET /funcionarios/1
  # GET /funcionarios/1.json
  def show
  end

  # GET /funcionarios/new
  def new
    @funcionario = Funcionario.new
  end

  # GET /funcionarios/1/edit
  def edit
  end

  # POST /funcionarios
  # POST /funcionarios.json
  def create
   # @funcionario = Funcionario.new(funcionario_params)
    institucion = Institucion.find(params[:funcionario][:institucion_id])
    @funcionario = institucion.funcionarios.build(funcionario_params)
    @funcionario.user = current_user

    respond_to do |format|
      if @funcionario.save
        format.html { redirect_to @funcionario, notice: 'Funcionario creado exitosamente.' }
        format.json { render :show, status: :created, location: @funcionario }
      else
        format.html { render :new }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funcionarios/1
  # PATCH/PUT /funcionarios/1.json
  def update
    respond_to do |format|
      if @funcionario.update(funcionario_params)
        format.html { redirect_to @funcionario, notice: 'Funcionario was successfully updated.' }
        format.json { render :show, status: :ok, location: @funcionario }
      else
        format.html { render :edit }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funcionarios/1
  # DELETE /funcionarios/1.json
  def destroy
    @funcionario.destroy
    respond_to do |format|
      format.html { redirect_to funcionarios_url, notice: 'Funcionario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funcionario
      @funcionario = Funcionario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def funcionario_params
      params.require(:funcionario).permit(:nombre, :apellido, :celular, :telefono, :correo, :estado, :tipo, :ci, :id, :materiaspeligrosas, :estructurascolapsadas, :busquedayrescate, :rescateacuatico, :manejadordeperros, :extinciondeincendiosurbanos, :extinciondeincendiosforestales, :medico, :soportebasicodevida, :asistentedeprimerosauxilios, :intructorcpi)
    end
end
