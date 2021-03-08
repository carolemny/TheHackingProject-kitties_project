Rails.application.routes.draw do
  root to: 'items#index'
  resources :items, except: [:destroy]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
