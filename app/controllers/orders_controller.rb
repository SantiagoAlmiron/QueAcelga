class OrdersController < ApplicationController
before_action :amounts_array, only: [:new, :create]


  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save! 
      redirect_to root_path
      # total price 
      # date 
      # set amount id to the current order 
    else
      render new_order_path
    end
  end

  private

  def amounts_array
    @amounts_id_array = session[:array]
  end

  def order_params
    params.require(:order).permit(:note)
  end

end
