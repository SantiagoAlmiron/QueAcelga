class FixingTypoInUserColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :las_name
    add_column :users, :last_namer, :string
  end
end
