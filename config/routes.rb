Rails.application.routes.draw do
  resources :join_item_orders, only: [:show, :index, :create]
  resources :orders, only: [:show, :index]
  root to: 'items#index'
  resources :items, except: [:destroy] do
    resources :pictures, only: [:create]
  end
  resources :join_item_carts
  resources :carts, only: [:show, :create]
  devise_for :users
end
