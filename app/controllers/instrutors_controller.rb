class InstrutorsController < ApplicationController
  before_action :set_instrutor, only: %i[ show edit update destroy ]

  # GET /instrutors or /instrutors.json
  def index
    @instrutors = Instrutor.all
  end

  # GET /instrutors/1 or /instrutors/1.json
  def show
  end

  # GET /instrutors/new
  def new
    @instrutor = Instrutor.new
  end

  # GET /instrutors/1/edit
  def edit
  end

  # POST /instrutors or /instrutors.json
  def create
    @instrutor = Instrutor.new(instrutor_params)

    respond_to do |format|
      if @instrutor.save
        format.html { redirect_to @instrutor, notice: "Instrutor was successfully created." }
        format.json { render :show, status: :created, location: @instrutor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @instrutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instrutors/1 or /instrutors/1.json
  def update
    respond_to do |format|
      if @instrutor.update(instrutor_params)
        format.html { redirect_to @instrutor, notice: "Instrutor was successfully updated." }
        format.json { render :show, status: :ok, location: @instrutor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @instrutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instrutors/1 or /instrutors/1.json
  def destroy
    @instrutor.destroy!

    respond_to do |format|
      format.html { redirect_to instrutors_path, status: :see_other, notice: "Instrutor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrutor
      @instrutor = Instrutor.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def instrutor_params
      params.expect(instrutor: [ :nome_instrutor, :salario, :departamento_id ])
    end
end
