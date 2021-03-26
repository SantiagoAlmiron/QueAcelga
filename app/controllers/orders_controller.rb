class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new ]

  def new
    @products = Product.all
    @order = Order.new
  end

end
