Rails.application.routes.draw do
  get 'lead/index'
  get 'dashboard/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :detail_rents
  resources :detail_sales
  resources :renters
  resources :buyers
  resources :properties
  resources :owners
  root 'home#index'
  
  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

end
