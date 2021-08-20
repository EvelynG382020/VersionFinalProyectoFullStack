class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to home_contacto_path, notice: "Su correo se ha enviado." 
    else
      redirect_to home_contacto_path, notice: "Problema al enviar su correo"
    end
  end
  private
  def contact_params
    params.require(:contact).permit(:title, :email, :description)
  end
end