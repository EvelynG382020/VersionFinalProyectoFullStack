class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        InfoMailer.form_contact(@contact).deliver
        format.html { redirect_to root_path, notice: "Su correo se ha enviado." }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end


  def pay_registration
    puts "++++++++" 
    require 'mercadopago'
    sdk = Mercadopago::SDK.new(Rails.application.credentials.mercadopago[:access_token])
    preference_data = {
      items: [
        {
          title: 'Mi Registro al plataforma',
          unit_price: 150000,
          quantity: 1
        }
      ]
    }
    preference_response = sdk.preference.create(preference_data)
    preference = preference_response[:response]
    puts "++++++ #{preference}"
    # Este valor reemplazará el string "<%= @preference_id %>" en tu HTML
    @preference_id = preference[sandbox_init_point]
  end


  private
  def contact_params
    params.require(:contact).permit(:title, :email, :description)
  end
end
