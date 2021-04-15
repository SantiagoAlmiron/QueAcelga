class EditOrdersTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :date
    remove_column :orders, :status
    add_column :orders, :status, :string, default: "pediente"
  end
end
