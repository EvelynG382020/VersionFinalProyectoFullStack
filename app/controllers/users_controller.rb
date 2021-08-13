class UsersController < ApplicationController
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to root_path
  end

  def update_status
    user = User.find(params[:id])
    if user.broker?
      user.role = 0
    else
      user.role = 1
    end
    user.save
    flash[:success] = "status User is updated"
    redirect_to properties_path
  end
end