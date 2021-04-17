Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, only: [:index]
  resources :orders, only: [:new, :create, :destroy] 
  resources :amounts, only: [:new, :create, :destroy] 
  get 'confirmation', to: "orders#confirmation"
  get 'myorders', to: "orders#myorders"
end
