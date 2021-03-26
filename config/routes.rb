Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :product, only: [ :index ] do
    resources :order, only: [ :new ]
  end
end
