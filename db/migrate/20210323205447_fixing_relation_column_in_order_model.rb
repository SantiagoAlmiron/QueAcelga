class FixingRelationColumnInOrderModel < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :user_id_id
    remove_column :orders, :product_id_id
    add_reference :orders, :user, index: true
    add_reference :orders, :product, index: true
  end
end
