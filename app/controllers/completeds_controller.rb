class CompletedsController < ApplicationController
  before_action :set_completed, only: %i[ show edit update destroy ]

  # GET /completeds or /completeds.json
  def index
    @completeds = current_user.completeds
  end

  # GET /completeds/1 or /completeds/1.json
  def show
  end

  # GET /completeds/new
  def new
    @completed = Completed.new
  end

  # GET /completeds/1/edit
  def edit
  end

  # POST /completeds or /completeds.json
  def create
    @completed = Completed.new(completed_params)

    respond_to do |format|
      if @completed.save
        format.html { redirect_to @completed, notice: "Completed was successfully created." }
        format.json { render :show, status: :created, location: @completed }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @completed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /completeds/1 or /completeds/1.json
  def update
    respond_to do |format|
      if @completed.update(completed_params)
        format.html { redirect_to @completed, notice: "Completed was successfully updated." }
        format.json { render :show, status: :ok, location: @completed }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @completed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /completeds/1 or /completeds/1.json
  def destroy
    @completed.destroy
    respond_to do |format|
      format.html { redirect_to completeds_url, notice: "Completed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_completed
      @completed = Completed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def completed_params
      params.fetch(:completed, {})
    end
end
