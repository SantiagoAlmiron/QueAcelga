class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @products = Product.all
    @order = Order.create
    @amount = Amount.create
  end

  private

  def order_params
  end

end
