class DetailRentsController < ApplicationController
  before_action :set_detail_rent, only: %i[ show edit update destroy ]

  # GET /detail_rents or /detail_rents.json
  def index
    @detail_rents = DetailRent.all
  end

  # GET /detail_rents/1 or /detail_rents/1.json
  def show
  end

  # GET /detail_rents/new
  def new
    @detail_rent = DetailRent.new
  end

  # GET /detail_rents/1/edit
  def edit
  end

  # POST /detail_rents or /detail_rents.json
  def create
    @detail_rent = DetailRent.new(detail_rent_params)

    respond_to do |format|
      if @detail_rent.save
        format.html { redirect_to @detail_rent, notice: "Detail rent was successfully created." }
        format.json { render :show, status: :created, location: @detail_rent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detail_rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_rents/1 or /detail_rents/1.json
  def update
    respond_to do |format|
      if @detail_rent.update(detail_rent_params)
        format.html { redirect_to @detail_rent, notice: "Detail rent was successfully updated." }
        format.json { render :show, status: :ok, location: @detail_rent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detail_rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_rents/1 or /detail_rents/1.json
  def destroy
    @detail_rent.destroy
    respond_to do |format|
      format.html { redirect_to detail_rents_url, notice: "Detail rent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_rent
      @detail_rent = DetailRent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detail_rent_params
      params.require(:detail_rent).permit(:detail, :value, :contract, :renter_id)
    end
end
