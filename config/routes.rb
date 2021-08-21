Rails.application.routes.draw do
  get 'lead/index'
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :detail_rents
  resources :detail_sales
  resources :renters
  resources :buyers
  resources :properties
  resources :contacts, only: [:create, :new]
  resources :owners do
    member do
      get 'like', to: 'owners#upvote'
      get 'dislike', to: 'owners#downvote'
    end
  end
  root 'home#index'
  get 'home/contacto'
  post 'contacts/new'
  devise_for :users, controllers: { 
    registrations: 'users/registrations', 
    sessions: 'users/sessions',
    omniauth_callbacks: 'omniauth_callbacks'}
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], as: :finish_signup
    
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

end
