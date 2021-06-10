Rails.application.routes.draw do
  get 'prices/edit'
  devise_for :users
  root to: 'products#index'
  resources :products, only: [:index, :new, :create, :destroy]
  resources :orders, only: [:new, :create, :destroy, :index]
  resources :amounts, only: [:new, :create, :destroy]
  resources :prices, only: [:edit, :update, :create]
  get 'confirmation', to: "orders#confirmation"
  get 'myorders', to: "orders#myorders"
  post 'conftimateorder', to: "orders#confirmate_order"
  post 'rejectorder', to: "orders#reject_order"
  mount Blazer::Engine, at: "blazer"
  # authenticate :user, ->(user) { user.admin? } do
  #   mount Blazer::Engine, at: "/admin/blazer"
  # end
end
