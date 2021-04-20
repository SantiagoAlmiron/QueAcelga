class OrdersController < ApplicationController
before_action :amounts_array, only: [:new, :create]

  def new
    @order = Order.new
  end

  def confirmate_order
    @order = Order.find(params[:format].to_i)
    @order.status = "aprobado"
    @order.save
    redirect_to orders_path
  end

  def reject_order
    @order = Order.find(params[:format].to_i)
    @order.status = "rechazado"
    @order.save
    redirect_to orders_path
  end

  def index
    @orders = Order.all
  end

  def myorders
    @orders = Order.where(user: current_user.id)
  end

  def destroy
    Order.destroy(params[:id])
    if current_user.admin == false
      redirect_to myorders_path
    else
      redirect_to orders_path
    end
  end

  def confirmate_delete
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    quantity = 0
    @amounts_id_array.each do |id| 
      a_instance = Amount.find_by_id(id)
      quantity += a_instance.amount if a_instance != nil
    end 
    @order.total_price = price_counter(quantity)
    if @order.save!
      amount_instances.each do |instance|
        instance.order_id = @order.id
        instance.save
      end
      session[:array] = []
      redirect_to confirmation_path
    else
      render new_order_path
    end
  end

  private

  def price_counter(quantity)
    price = 0
    while quantity > 0
      if quantity % 12 == 0
        price += Price.first.price_12 * (quantity / 12).to_i
        quantity = quantity - 12 * ((quantity / 12).to_i)
      elsif quantity % 8 == 0
        price += Price.first.price_8 * (quantity / 8).to_i
        quantity = quantity - 8 * ((quantity / 8).to_i)
      elsif quantity % 4 == 0
        price += Price.first.price_4 * (quantity / 4).to_i
        quantity = quantity - 4 * ((quantity / 4).to_i)
      end
    end
    price
  end
  
  def amount_instances
    instances = []
    @amounts_id_array = session[:array]
    @amounts_id_array.each do |id| 
      a_instance = Amount.find_by_id(id)
      instances << a_instance if a_instance != nil
    end
    instances
  end 

  def amounts_array
    @amounts_id_array = session[:array]
  end

  def order_params
    params.require(:order).permit(:note)
  end

end
