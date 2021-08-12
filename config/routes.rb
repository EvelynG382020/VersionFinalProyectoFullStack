Rails.application.routes.draw do
  resources :detail_rents
  resources :detail_sales
  resources :renters
  resources :buyers
  resources :properties
  resources :owners
  root 'welcome#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

end
