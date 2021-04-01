class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    @amount = Amount.new
  end

end
