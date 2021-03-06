class AmountsController < ApplicationController
  after_action :amount_id_saver, only: :create
  # before_action :clear, only: :create

  def create
    @amount = Amount.new(amount_params)
    if @amount.amount >= 1 && @amount.save 
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    Amount.destroy(params[:id])
    redirect_to root_path
  end

  private

  def amount_params
    params.require(:amount).permit(:amount, :product_id)
  end

  def amount_id_saver
    session[:array] ||= []
    session[:array] << @amount.id if @amount.id != nil
  end

end
