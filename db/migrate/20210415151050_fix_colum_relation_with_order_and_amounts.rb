class FixColumRelationWithOrderAndAmounts < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :amounts_id
    add_reference :amounts, :order, foreign_key: true
  end
end
