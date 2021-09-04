class PayRegistrationsController < ApplicationController
    def new
      @pay_registration = PayRegistration.new
    end
  
  
    def create
      @pay_registration = PayRegistration.new(pay_registration_params)
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
      puts "++++++++" 
      require 'mercadopago'
      sdk = Mercadopago::SDK.new(ENV['MP_ACCESS_TOKEN'])
      preference_data = {
        items: [
          {
            title: 'Mi Registro a la plataforma',
            unit_price: 150000,
            quantity: 1
          },
          back_urls: {
            success: "https://www.success.com",
            failure: "http://www.failure.com",
            pending: "http://www.pending.com"
        },
          auto_return: "approved"
        ]
      }

      preference_response = sdk.preference.create(preference_data)
      preference = preference_response[:response]
      puts "++++++ #{preference}"
      # Este valor reemplazará el string "<%= @preference_id %>" en tu HTML
      @preference_id = preference['id']
      sandbox_init_point = preference["sandbox_init_point"]
      redirect_to sandbox_init_point

    end
  
    private
    def pay_registration_params
      params.require(:pay_registration).permit(:name, :last_name, :phone, :email)
    end
 
  
end
