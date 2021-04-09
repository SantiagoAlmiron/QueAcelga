class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    @amount = Amount.new
    @products_array = session[:array]
  end

end
