class AddImportantFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string 
    add_column :users, :las_name, :string 
    add_column :users, :admin, :boolean, default: false
    add_column :users, :phone_number, :string 
    add_column :users, :direction, :string 
  end
end
