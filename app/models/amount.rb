class Amount < ApplicationRecord
  belongs_to :order
  # belongs_to :user, through: :order creo que no va a ser necesario llegar a user desde Amount
  belongs_to :product
end
