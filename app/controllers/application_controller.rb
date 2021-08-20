class ApplicationController < ActionController::Base
    # Catch all CanCan errors and alert the user of the exception
    rescue_from CanCan::AccessDenied do | exception |
    redirect_to root_url, alert: "Acceso Denegado"
  end

end
