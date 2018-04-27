class WelcomesController < ApplicationController
  before_action :set_welcome, only: [:show, :edit, :update, :destroy,:eliminar, :habilitarlo, :desactivarlo ]
  # GET /welcomes
  # GET /welcomes.json
  def index
    @palabra = ''
    @palabra = params[:palabra]
    @usuarios = User.where("email LIKE '#{@palabra}%'")	  
  end


def eliminar
  user=User.find(params[:id])
  user.destroy
  @usuarios = User.all
  render '/'
end

def habilitarlo
  usuario = User.find(params[:id])
  usuario.tipo = true
  usuario.save
  @usuarios = User.where("email LIKE '#{@palabra}%'") 
  render '/'
end

def desactivarlo
  usuario = User.find(params[:id])
  usuario.tipo = nil
  usuario.save
  @usuarios = User.where("email LIKE '#{@palabra}%'") 
  render '/'
end

  # GET /welcomes/1
  # GET /welcomes/1.json
  def show
  end

  # GET /welcomes/new
  def new
    @welcome = Welcome.new
  end

  # GET /welcomes/1/edit
  def edit
  end

  # POST /welcomes
  # POST /welcomes.json
  def create
    @welcome = Welcome.new(welcome_params)

    respond_to do |format|
      if @welcome.save
        format.html { redirect_to @welcome, notice: 'Welcome was successfully created.' }
        format.json { render :show, status: :created, location: @welcome }
      else
        format.html { render :new }
        format.json { render json: @welcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /welcomes/1
  # PATCH/PUT /welcomes/1.json
  def update
    respond_to do |format|
      if @welcome.update(welcome_params)
        format.html { redirect_to @welcome, notice: 'Welcome was successfully updated.' }
        format.json { render :show, status: :ok, location: @welcome }
      else
        format.html { render :edit }
        format.json { render json: @welcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /welcomes/1
  # DELETE /welcomes/1.json
  def destroy
    @welcome.destroy
    respond_to do |format|
      format.html { redirect_to welcomes_url, notice: 'Welcome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_welcome
      @welcome = Welcome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def welcome_params
      params.fetch(:welcome, {})
    end
end
