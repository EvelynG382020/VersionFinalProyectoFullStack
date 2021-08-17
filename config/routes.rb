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
  resources :owners do
    member do
      put 'like', to: 'owners#upvote'
      put 'dislike', to: 'owners#downvote'
    end
  end
  root 'home#index'
  
  devise_for :users, controllers: { 
    registrations: 'users/registrations', 
    sessions: 'users/sessions',
    omniauth_callbacks: 'omniauth_callbacks'}
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], as: :finish_signup
    
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

end
