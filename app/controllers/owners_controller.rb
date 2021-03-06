class OwnersController < ApplicationController
  before_action :set_owner, only: %i[ show edit update destroy upvote downvote]
  before_action :authenticate_user!
  load_and_authorize_resource # le dice al controlador que escuche al ability

  # GET /owners or /owners.json
  def index
    @q = Owner.ransack(params[:q])
    @owners = @q.result(distinct: true)

    if params[:ownersearch].present?
      @owners = Owner.search_my_owners(params[:ownersearch]).page(params[:page]).order("created_at DESC")
    end
  end

  # GET /owners/1 or /owners/1.json
  def show
  end

  # GET /owners/new
  def new
    @owner = Owner.new
  end

  # GET /owners/1/edit
  def edit
  end

  # POST /owners or /owners.json
  def create
    @owner = Owner.new(owner_params)

    respond_to do |format|
      if @owner.save
        format.html { redirect_to @owner, notice: "#{@owner.name} was successfully created." }
        format.json { render :show, status: :created, location: @owner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owners/1 or /owners/1.json
  def update
    respond_to do |format|
      if @owner.update(owner_params)
        format.html { redirect_to @owner, notice: "#{@owner.name} was successfully updated." }
        format.json { render :show, status: :ok, location: @owner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owners/1 or /owners/1.json
  def destroy
    @owner.destroy
    respond_to do |format|
      format.html { redirect_to owners_url, notice: "#{@owner.name} was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def upvote
    @owner = Owner.find(params[:id])
    @owner.upvote_by current_user
    redirect_back fallback_location: root_path
  end

  def downvote
    @owner = Owner.find(params[:id])
    @owner.downvote_by current_user
    redirect_back fallback_location: root_path
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner
      @owner = Owner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def owner_params
      params.require(:owner).permit(:name, :phone, :rut, :mail)
    end
end
