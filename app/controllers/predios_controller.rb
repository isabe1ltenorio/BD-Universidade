class PrediosController < ApplicationController
  before_action :set_predio, only: %i[ show edit update destroy ]

  # GET /predios or /predios.json
  def index
    @predios = Predio.all
  end

  # GET /predios/1 or /predios/1.json
  def show
  end

  # GET /predios/new
  def new
    @predio = Predio.new
  end

  # GET /predios/1/edit
  def edit
  end

  # POST /predios or /predios.json
  def create
    @predio = Predio.new(predio_params)

    respond_to do |format|
      if @predio.save
        format.html { redirect_to @predio, notice: "Predio was successfully created." }
        format.json { render :show, status: :created, location: @predio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @predio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /predios/1 or /predios/1.json
  def update
    respond_to do |format|
      if @predio.update(predio_params)
        format.html { redirect_to @predio, notice: "Predio was successfully updated." }
        format.json { render :show, status: :ok, location: @predio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @predio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predios/1 or /predios/1.json
  def destroy
    @predio.destroy!

    respond_to do |format|
      format.html { redirect_to predios_path, status: :see_other, notice: "Predio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_predio
      @predio = Predio.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def predio_params
      params.expect(predio: [ :nome_predio ])
    end
end
