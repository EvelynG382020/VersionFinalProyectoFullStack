ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  #permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :role, :name
  #
  # or
  #
  permit_params :email, :name, :role, :password, :password_confirmation

  index do
    column :name
    column :email
    column :role
    #column :status_payment
    actions
  end

  form do |f|
    f.inputs 'User' do
      f.input :name
      f.input :email
      f.input :role
      #f.input :status_payment
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
  # permit_params do
  #   permitted = [:email, :name, :role]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

#   permit_params :name, :email, :user_id
#   before_action :remove_password_params_if_blank, only: [:update]
  
#   controller do
#     def remove_password_params_if_blank
#       if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
#         params[:user].delete(:password)
#         params[:user].delete(:password_confirmation)
#       end
#     end
#   end
  
# end
