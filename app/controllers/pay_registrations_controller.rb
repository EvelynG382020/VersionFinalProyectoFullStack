class PayRegistrationsController < ApplicationController
    def new
      @pay_registration = PayRegistration.new
    end
  
  
    def create
      @pay_registration = PayRegistration.new(pay_registration_params)
      @pay_registration.user = current_user
      respond_to do |format|
        if @pay_registration.save
          format.html { redirect_to root_path, notice: "Su pago se ha enviado." }
          format.json { render :show, status: :created, location: @pay_registration }
        else
          format.html { render :new }
          format.json { render json: @pay_registration.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def pay
      require 'mercadopago'
      sdk = Mercadopago::SDK.new(ENV['MP_ACCESS_TOKEN'])
      preference_data = {
        items: [
          {
            title: 'Registro a la plataforma',
            unit_price: 150000,
            quantity: 1
          }
         
        ],
        back_urls: {
          success: payment_success_url,
          failure: "http://www.failure.com",
          pending: "http://www.pending.com"
        },
        auto_return: "approved"
      }

      preference_response = sdk.preference.create(preference_data)
      preference = preference_response[:response]
      
      # Este valor reemplazará el string "<%= @preference_id %>" en tu HTML
      @preference_id = preference['id']
      sandbox_init_point = preference["sandbox_init_point"]
      redirect_to sandbox_init_point

    end

    def pay_successfull   
      @pay_registration = current_user.pay_registration
      #@pay_registration = PayRegistration.where(status: "pending")
      if params[:status] == 'approved'
        @status = params[:status]
        @payment_id = params[:payment_id]
       
        # @pay_registration.status = 'approved'
        # @pay_registration.payment_id = params[:payment_id]
      
        #@pay_registration.save
      else
      redirect_to root_path, notice: "El pago no se pudo efectuar"
      end 
    end
  
    private
    def pay_registration_params
      params.require(:pay_registration).permit(:name, :last_name, :phone, :mail)
    end
 
  
end
