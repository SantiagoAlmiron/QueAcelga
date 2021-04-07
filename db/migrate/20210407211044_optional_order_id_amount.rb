class OptionalOrderIdAmount < ActiveRecord::Migration[6.1]
  def change
    remove_column :amounts, :product_id
    add_reference :amounts, :product, null: true, foreign_key: true
  end
end
