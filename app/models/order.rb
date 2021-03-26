class Order < ApplicationRecord
  belongs_to :user
  has_many :amounts, dependent: :destroy
  has_many :products, through: :amount
end
