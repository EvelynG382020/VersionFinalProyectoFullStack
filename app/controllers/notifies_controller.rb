class NotifiesController < ApplicationController  
  def new
    @notify = Notify.new
  end
  
  def create
    @notify = Notify.new(notify_params)
    respond_to do |format|
      if @notify.save
        DetailSaleMailer.notify_ended(@notify).deliver
        format.html { redirect_to detail_sales_path, notice: "Su correo se ha enviado." }
        format.json { render :show, status: :created, location: @notify }
      else
        format.html { render :new }
        format.json { render json: @notify.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def notify_params
    params.require(:notify).permit(:title, :name_user, :description)
  end
end