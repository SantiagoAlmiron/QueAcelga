class SetDefaultValueForAmount < ActiveRecord::Migration[6.1]
  def change
     remove_column :amounts, :amount
     add_column :amounts, :amount, :integer, default: 0
  end
end
