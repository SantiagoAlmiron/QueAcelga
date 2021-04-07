Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, only: [:index]
  resources :orders, only: [:new, :create] 
  resources :amounts, only: [:new, :create] 
end
