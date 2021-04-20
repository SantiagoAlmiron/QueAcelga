class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    @amount = Amount.new
    @amounts_id_array = session[:array]
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    if @product.save
      redirect_to root_path
    else
      redirect_to edit edit_price_path(Price.first.id)
    end
  end

  def destroy
    Product.destroy(params[:id])
    redirect_to root_path 
  end

  private

  def product_params
    params.require(:product).permit(:name, :user_id)
  end

end
