class Product < ApplicationRecord
  belongs_to :user
  has_many :orders
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
end
