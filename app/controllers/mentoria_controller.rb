class MentoriaController < ApplicationController
  before_action :set_mentorium, only: %i[ show edit update destroy ]

  # GET /mentoria or /mentoria.json
  def index
    @mentoria = Mentoria.all
  end

  # GET /mentoria/1 or /mentoria/1.json
  def show
  end

  # GET /mentoria/new
  def new
    @mentorium = Mentoria.new
  end

  # GET /mentoria/1/edit
  def edit
  end

  # POST /mentoria or /mentoria.json
  def create
    @mentorium = Mentoria.new(mentorium_params)

    respond_to do |format|
      if @mentorium.save
        format.html { redirect_to @mentorium, notice: "Mentoria was successfully created." }
        format.json { render :show, status: :created, location: @mentorium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mentorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentoria/1 or /mentoria/1.json
  def update
    respond_to do |format|
      if @mentorium.update(mentorium_params)
        format.html { redirect_to @mentorium, notice: "Mentoria was successfully updated." }
        format.json { render :show, status: :ok, location: @mentorium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mentorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentoria/1 or /mentoria/1.json
  def destroy
    @mentorium.destroy!

    respond_to do |format|
      format.html { redirect_to mentoria_path, status: :see_other, notice: "Mentoria was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentorium
      @mentorium = Mentoria.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def mentorium_params
      params.expect(mentorium: [ :nota, :aluno_id, :instrutor_id ])
    end
end
