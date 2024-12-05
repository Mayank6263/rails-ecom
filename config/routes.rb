Rails.application.routes.draw do
  devise_for :users

  # Add new to the list of actions for products
  resources :profiles, only: [:new, :index, :create, :edit, :update]
  resources :addresses, only: [:new, :create, :edit, :update]
  resources :products, only: [:index, :create, :show, :edit, :update, :new, :destroy] 
  resources :users, only: [:index, :show, :edit, :update]


  root 'products#index'
end
