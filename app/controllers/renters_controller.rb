class RentersController < ApplicationController
  before_action :set_renter, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  load_and_authorize_resource
  
  # GET /renters or /renters.json
  def index
    @renters = Renter.all
  end

  # GET /renters/1 or /renters/1.json
  def show
  end

  # GET /renters/new
  def new
    @renter = Renter.new
  end

  # GET /renters/1/edit
  def edit
  end

  # POST /renters or /renters.json
  def create
    @renter = Renter.new(renter_params)

    respond_to do |format|
      if @renter.save
        format.html { redirect_to @renter, notice: "#{@renter.name} was successfully created." }
        format.json { render :show, status: :created, location: @renter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @renter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /renters/1 or /renters/1.json
  def update
    respond_to do |format|
      if @renter.update(renter_params)
        format.html { redirect_to @renter, notice: "#{@renter.name} was successfully updated." }
        format.json { render :show, status: :ok, location: @renter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @renter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renters/1 or /renters/1.json
  def destroy
    @renter.destroy
    respond_to do |format|
      format.html { redirect_to renters_url, notice: "#{@renter.name} was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renter
      @renter = Renter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def renter_params
      params.require(:renter).permit(:name, :phone, :rut, :mail, :detail, :property_id)
    end
end
