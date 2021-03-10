Rails.application.routes.draw do
  root to: 'items#index'
  resources :items, except: [:destroy] do
    resources :pictures, only: [:create]
  end
  resources :join_item_carts
  resources :carts, only: [:show, :create]
  devise_for :users
end
