class OmniauthCallbacksController < Devise::OmniauthCallbacksController
 

  def facebook
    @user = User.find_for_oauth( request.env["omniauth.auth"])
    if @user.persisted?
      flash[:notice] = "has iniciado sesion via facebook"
      sign_in_and_redirect @user, :event => :authentication
    else
      redirect_to new_user_registration_url
    end
  end
end