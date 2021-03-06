class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:my_completed]
  

    def create
      # Create the user from params
      @user = User.new(user_params)
      if @user.save
        # Deliver the signup email
        UserNotifierMailer.send_signup_email(@user).deliver
        redirect_to(@user, :notice => 'User created')
      else
        render :action => 'new'
      end
    end

    def my_completed 
      @completeds = current_user.completeds
    end
    
    private
  
    def user_params
      accessible = [ :name, :email ] # extend with your own params
      accessible << [ :password, :password_confirmation ] unless params[:user][:password].blank?
      params.require(:user).permit(accessible)
  
      #params.require(:user).permit(:name, :email)
    end
  end