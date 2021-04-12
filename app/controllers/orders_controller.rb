class OrdersController < ApplicationController

  def new
    @order = Order.new
    @amounts_id_array = session[:array]
  end

  private

  def order_params
    params.require(:order).permit(:amount, :product_id)
  end

end
