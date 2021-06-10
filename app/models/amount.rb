class Amount < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, dependent: :destroy

  def self.price_calculator(quantity)
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

end
