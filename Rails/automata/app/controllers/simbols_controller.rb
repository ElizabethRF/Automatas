class SimbolsController < ApplicationController
  before_action :require_user
  before_action :require_admin 
  before_action :set_simbol, only: [:show, :edit, :update, :destroy]

  # GET /simbols
  # GET /simbols.json
  def index
    @simbols = Simbol.all
  end

  # GET /simbols/1
  # GET /simbols/1.json
  def show
    @simbols = Simbol.all
  end

  # GET /simbols/new
  def new
    @simbol = Simbol.new
  end

  # GET /simbols/1/edit
  def edit
  end

  # POST /simbols
  # POST /simbols.json
  def create
    @simbol = Simbol.new(simbol_params)

    respond_to do |format|
      if @simbol.save
        format.html { redirect_to @simbol, notice: 'Simbol was successfully created.' }
        format.json { render :show, status: :created, location: @simbol }
      else
        format.html { render :new }
        format.json { render json: @simbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simbols/1
  # PATCH/PUT /simbols/1.json
  def update
    respond_to do |format|
      if @simbol.update(simbol_params)
        format.html { redirect_to @simbol, notice: 'Simbol was successfully updated.' }
        format.json { render :show, status: :ok, location: @simbol }
      else
        format.html { render :edit }
        format.json { render json: @simbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simbols/1
  # DELETE /simbols/1.json
  def destroy
    @simbol.destroy
    respond_to do |format|
      format.html { redirect_to simbols_url, notice: 'Simbol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def require_admin
        if logged_in? and !(current_user.tipo == 'Jefe de departamento')  
            redirect_to root_path
         end 
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simbol
      @simbol = Simbol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simbol_params
      params.require(:simbol).permit(:name, :picture, :detail)
    end
end
