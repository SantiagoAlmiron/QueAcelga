class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders, dependent: :destroy
  has_many :products
  validates :first_name, :last_name, :phone_number, :direction, presence: true
end
