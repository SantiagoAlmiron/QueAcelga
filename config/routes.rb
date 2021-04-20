Rails.application.routes.draw do
  get 'prices/edit'
  devise_for :users
  root to: 'products#index'
  resources :products, only: [:index]
  resources :orders, only: [:new, :create, :destroy, :index]
  resources :amounts, only: [:new, :create, :destroy]
  resources :prices, only: [:edit, :update]
  get 'confirmation', to: "orders#confirmation"
  get 'myorders', to: "orders#myorders"
  post 'conftimateorder', to: "orders#confirmate_order"
  post 'rejectorder', to: "orders#reject_order"
end
