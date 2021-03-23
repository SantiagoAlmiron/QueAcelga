class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.references :user_id, null: false, foreing_key: true

      t.timestamps
    end
  end
end