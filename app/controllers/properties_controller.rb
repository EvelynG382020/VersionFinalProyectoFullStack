class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show edit update destroy finished]
  before_action :authenticate_user!
  load_and_authorize_resource
  
  # GET /properties or /properties.json
  def index
    @q = Property.ransack(params[:q])
    @properties = @q.result(distinct: true)
  end

  # GET /properties/1 or /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties or /properties.json
  def create
    sleep 1
    @property = Property.new(property_params)
    
    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: "#{@property.name} was successfully created." }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1 or /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: "#{@property.name} was successfully updated." }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1 or /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: "#{@property.name} was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def finished 
    completed = Completed.new(property: @property, user: current_user)
    if completed.save!
      @msg = "Finalizado exitosamente"
    else
      @msg = "Error al intentar finalizarlo"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:name, :status, :detail, :kind, :adress, :rol, :negotiation, :owner_id, buyers_attributes: [:name, :phone, :mail, :rut, :detail, :property_id, :_destroy], renters_attributes: [:name, :phone, :mail, :rut, :detail, :property_id, :_destroy])
    end
end
