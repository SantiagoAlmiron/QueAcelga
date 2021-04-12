class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    @amount = Amount.new
    @amounts_id_array = session[:array]
  end

end
