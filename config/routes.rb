Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, only: [:index]
  resources :amounts, only: [:new, :create] do
    resources :orders, only: [:new, :create] 
  end
end
