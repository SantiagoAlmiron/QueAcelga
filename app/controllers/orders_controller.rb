class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  private

  def order_params
    params.require(:order).permit(:amount, :product_id)
  end

end
