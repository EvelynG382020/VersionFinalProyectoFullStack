Rails.application.routes.draw do
  get 'mercado-pago', to: 'pay_registrations#pay'
  post 'pay_registrations/new'
  get 'payment_success', to: 'pay_registrations#pay_successfull'
  get 'lead/index'
  get 'my_completeds', to: 'users#my_completed'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :detail_rents
  resources :detail_sales
  resources :renters
  resources :buyers
  resources :properties do
    member do
      post 'finalizar', to: 'properties#finished'
    end
  end
  resources :completeds
  resources :contacts, only: [:create, :new]
  resources :pay_registrations, only: [:create, :new]
  resources :owners do
    member do
      get 'like', to: 'owners#upvote'
      get 'dislike', to: 'owners#downvote'
    end
  end
  root 'home#index'
  post 'contacts/new'
  devise_for :users, controllers: { 
    registrations: 'users/registrations', 
    sessions: 'users/sessions',
    omniauth_callbacks: 'omniauth_callbacks'}
   
  #match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], as: :finish_signup
    
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

end
