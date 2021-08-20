class HomeController < ApplicationController
    def index
        @properties = Property.all
    end

    def contacto
        @contact = Contact.new 
    end 
end