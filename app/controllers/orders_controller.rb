class OrdersController < ApplicationController
before_action :amounts_array, only: [:new, :create]

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    quantity = 0
    price = 0
    @amounts_id_array.each do |id| 
      a_instance = Amount.find_by_id(id)
      quantity += a_instance.amount if a_instance != nil
    end 
    while quantity > 0
      if quantity % 12 == 0
        price += 400 * (quantity / 12).to_i
        quantity = quantity - 12 * ((quantity / 12).to_i)
      elsif quantity % 8 == 0
        price += 300 * (quantity / 8).to_i
        quantity = quantity - 8 * ((quantity / 8).to_i)
      elsif quantity % 4 == 0
        price += 170 * (quantity / 4).to_i
        quantity = quantity - 4 * ((quantity / 4).to_i)
      end
      @order.total_price = price
      @order.date = Date.today 
      @order.status = "pendiente"
    end
    if @order.save!
      @amounts_id_array.each do |id| 
        a_instance = Amount.find_by_id(id)
        if a_instance != nil 
          a_instance.order_id = @order.id
          redirect_to root_path
        end
      end  
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
