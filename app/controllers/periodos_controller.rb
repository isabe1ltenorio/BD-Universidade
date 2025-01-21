class PeriodosController < ApplicationController
  before_action :set_periodo, only: %i[ show edit update destroy ]

  # GET /periodos or /periodos.json
  def index
    @periodos = Periodo.all
  end

  # GET /periodos/1 or /periodos/1.json
  def show
  end

  # GET /periodos/new
  def new
    @periodo = Periodo.new
  end

  # GET /periodos/1/edit
  def edit
  end

  # POST /periodos or /periodos.json
  def create
    @periodo = Periodo.new(periodo_params)

    respond_to do |format|
      if @periodo.save
        format.html { redirect_to @periodo, notice: "Periodo was successfully created." }
        format.json { render :show, status: :created, location: @periodo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @periodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /periodos/1 or /periodos/1.json
  def update
    respond_to do |format|
      if @periodo.update(periodo_params)
        format.html { redirect_to @periodo, notice: "Periodo was successfully updated." }
        format.json { render :show, status: :ok, location: @periodo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @periodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periodos/1 or /periodos/1.json
  def destroy
    @periodo.destroy!

    respond_to do |format|
      format.html { redirect_to periodos_path, status: :see_other, notice: "Periodo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_periodo
      @periodo = Periodo.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def periodo_params
      params.expect(periodo: [ :data, :hora_inicial, :hora_final ])
    end
end
