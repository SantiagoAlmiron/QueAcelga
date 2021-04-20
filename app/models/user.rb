class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders, dependent: :destroy
  has_many :products
  has_one :prices
  validates :first_name, :last_name, :phone_number, :direction, presence: true
end
