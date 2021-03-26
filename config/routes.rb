Rails.application.routes.draw do
  devise_for :users
  root to: 'orders#new'
  resources :order, only: [ :new ]
end
