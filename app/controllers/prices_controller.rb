class PricesController < ApplicationController

  def edit
    @price = Price.first
  end

  def update
    @price = Price.find(params[:id])
    @price.update(price_params)
    redirect_to edit_price_path
  end
  
  private

  def price_params
    params.require(:price).permit(:price_4, :price_8, :price_12)
  end

end
