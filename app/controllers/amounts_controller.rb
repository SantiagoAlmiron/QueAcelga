class AmountsController < ApplicationController

  def create
    @amount = Amount.new(amount_params)
    if @amount.save
      redirect_to root_path
    else
       redirect_to root_path
    end
  end

  private

  def amount_params
    params.require(:amount).permit(:amount, :product_id)
  end

end
