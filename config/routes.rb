Rails.application.routes.draw do
  devise_for :users
  root to: 'orders#new'
  resources :order, only: [ :new ] do
    resources :amount, only: [ :new ]
  end
end
