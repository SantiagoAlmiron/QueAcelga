class FixOrderAndProductColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :product_id
    remove_column :amounts, :user_id
    add_reference :orders, :amounts, index: true
  end
end
