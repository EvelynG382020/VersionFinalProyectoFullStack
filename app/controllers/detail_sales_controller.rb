class DetailSalesController < ApplicationController
  before_action :set_detail_sale, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /detail_sales or /detail_sales.json
  def index
    @detail_sales = DetailSale.all
  end

  # GET /detail_sales/1 or /detail_sales/1.json
  def show
  end

  # GET /detail_sales/new
  def new
    @detail_sale = DetailSale.new
  end

  # GET /detail_sales/1/edit
  def edit
  end

  # POST /detail_sales or /detail_sales.json
  def create
    @detail_sale = DetailSale.new(detail_sale_params)

    respond_to do |format|
      if @detail_sale.save
        format.html { redirect_to @detail_sale, notice: "Detail sale was successfully created." }
        format.json { render :show, status: :created, location: @detail_sale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detail_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_sales/1 or /detail_sales/1.json
  def update
    respond_to do |format|
      if @detail_sale.update(detail_sale_params)
        format.html { redirect_to @detail_sale, notice: "Detail sale was successfully updated." }
        format.json { render :show, status: :ok, location: @detail_sale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detail_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_sales/1 or /detail_sales/1.json
  def destroy
    @detail_sale.destroy
    respond_to do |format|
      format.html { redirect_to detail_sales_url, notice: "Detail sale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_sale
      @detail_sale = DetailSale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detail_sale_params
      params.require(:detail_sale).permit(:detail, :caratula, :url, :value, :contract, :purchase_contract, :inscription, :buyer_id)
    end
end
