class FixingProductModel < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :description
    remove_column :products, :price
    remove_column :products, :user_id_id
  end
end
