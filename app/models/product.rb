class Product < ApplicationRecord
  belongs_to :user
  has_many :amounts
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo, dependent: :destroy
end
