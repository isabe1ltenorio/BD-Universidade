class MinistrasController < ApplicationController
  before_action :set_ministra, only: %i[ show edit update destroy ]

  # GET /ministras or /ministras.json
  def index
    @ministras = Ministra.all
  end

  # GET /ministras/1 or /ministras/1.json
  def show
  end

  # GET /ministras/new
  def new
    @ministra = Ministra.new
  end

  # GET /ministras/1/edit
  def edit
  end

  # POST /ministras or /ministras.json
  def create
    @ministra = Ministra.new(ministra_params)

    respond_to do |format|
      if @ministra.save
        format.html { redirect_to @ministra, notice: "Ministra was successfully created." }
        format.json { render :show, status: :created, location: @ministra }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ministra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ministras/1 or /ministras/1.json
  def update
    respond_to do |format|
      if @ministra.update(ministra_params)
        format.html { redirect_to @ministra, notice: "Ministra was successfully updated." }
        format.json { render :show, status: :ok, location: @ministra }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ministra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ministras/1 or /ministras/1.json
  def destroy
    @ministra.destroy!

    respond_to do |format|
      format.html { redirect_to ministras_path, status: :see_other, notice: "Ministra was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ministra
      @ministra = Ministra.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def ministra_params
      params.expect(ministra: [ :semestre, :ano, :curso_id, :secao_id, :instrutor_id ])
    end
end
