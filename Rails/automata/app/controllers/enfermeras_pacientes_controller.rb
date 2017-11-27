class EnfermerasPacientesController < ApplicationController
  before_action :set_enfermeras_paciente, only: [:show, :edit, :update, :destroy]

  # GET /enfermeras_pacientes
  # GET /enfermeras_pacientes.json
  def index
    @enfermeras_pacientes = EnfermerasPaciente.all
  end

  # GET /enfermeras_pacientes/1
  # GET /enfermeras_pacientes/1.json
  def show
  end

  # GET /enfermeras_pacientes/new
  def new
    @enfermeras_paciente = EnfermerasPaciente.new

  end

  # GET /enfermeras_pacientes/1/edit
  def edit
  end

  # POST /enfermeras_pacientes
  # POST /enfermeras_pacientes.json
  def create
    @enfermeras_paciente = EnfermerasPaciente.new(enfermeras_paciente_params)

    respond_to do |format|
      if @enfermeras_paciente.save
        format.html { redirect_to @enfermeras_paciente, notice: 'Enfermeras paciente was successfully created.' }
        format.json { render :show, status: :created, location: @enfermeras_paciente }
      else
        format.html { render :new }
        format.json { render json: @enfermeras_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enfermeras_pacientes/1
  # PATCH/PUT /enfermeras_pacientes/1.json
  def update
    respond_to do |format|
      if @enfermeras_paciente.update(enfermeras_paciente_params)
        format.html { redirect_to @enfermeras_paciente, notice: 'Enfermeras paciente was successfully updated.' }
        format.json { render :show, status: :ok, location: @enfermeras_paciente }
      else
        format.html { render :edit }
        format.json { render json: @enfermeras_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enfermeras_pacientes/1
  # DELETE /enfermeras_pacientes/1.json
  def destroy
    @enfermeras_paciente.destroy
    respond_to do |format|
      format.html { redirect_to enfermeras_pacientes_url, notice: 'Enfermeras paciente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enfermeras_paciente
      @enfermeras_paciente = EnfermerasPaciente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enfermeras_paciente_params
      params.require(:enfermeras_paciente).permit(:user_id, :paciente_id)
    end
end
