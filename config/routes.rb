Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :detail_rents
  resources :detail_sales
  resources :renters
  resources :buyers
  resources :properties
  resources :owners
  root 'home#index'
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

end
