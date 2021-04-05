class AmountsController < ApplicationController

  def create
    @amount = Amount.new(amount_params)
    if @amount.save
      redirect_to edit_trip_path(@trip)
    else
      render :new
    end
    @amount.save ? redirect_to 
  end

  private

  def amount_params
    params.require(:amount).permit(:amount)
  end

end
