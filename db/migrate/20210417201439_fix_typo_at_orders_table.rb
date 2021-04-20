class FixTypoAtOrdersTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :status
    add_column :orders, :status, :string, default: "pendiente" 
  end
end
