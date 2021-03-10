Rails.application.routes.draw do
  root to: 'items#index'
  resources :items, except: [:destroy]
  resources :join_item_carts
  resources :carts, only: [:show, :create, :new]
  devise_for :users
end
