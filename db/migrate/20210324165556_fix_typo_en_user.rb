class FixTypoEnUser < ActiveRecord::Migration[6.1]
  def change
     remove_column :users, :last_namer
     add_column :users, :last_name, :string
  end
end
