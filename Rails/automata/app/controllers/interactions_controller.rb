class InteractionsController < ApplicationController
  before_action :require_user
  before_action :require_admin 
  before_action :set_interaction, only: [:show, :edit, :update]

  # GET /interactions
  # GET /interactions.json
  def index
    @interactions = Interaction.all
  end

  # GET /interactions/1
  # GET /interactions/1.json
  def show
  end

  # GET /interactions/new
  def new
    @interaction = Interaction.new
    @pacientes = Paciente.all
    @simbolos = Simbol.all
  end

  # GET /interactions/1/edit
  def edit
    @simbolos = Simbol.all
  end

  # POST /interactions
  # POST /interactions.json
  def create
    @interaction = Interaction.new(interaction_params)

    respond_to do |format|
      @interaction.user = current_user
      @simbolos = Simbol.all
      if @interaction.save
        format.html { redirect_to @interaction, notice: 'Interaction was successfully created.' }
        format.json { render :show, status: :created, location: @interaction }
      else
        format.html { render :new }
        format.json { render json: @interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interactions/1
  # PATCH/PUT /interactions/1.json
  def update
    @simbolos = Simbol.all
    respond_to do |format|
      if @interaction.update(interaction_params)
        format.html { redirect_to @interaction, notice: 'Interaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @interaction }
      else
        format.html { render :edit }
        format.json { render json: @interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interactions/1
  # DELETE /interactions/1.json

  def require_admin
        if logged_in? and !(current_user.tipo == 'Enfermera')  
            redirect_to root_path
         end 
  end 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interaction
      @interaction = Interaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interaction_params
      params.require(:interaction).permit(:simbol_id, :user_id, :paciente_id, :comentarios, :checkbox)
    end
end
