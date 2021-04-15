class Order < ApplicationRecord
  belongs_to :user
  has_many :amounts
  has_many :products, through: :amount
end
