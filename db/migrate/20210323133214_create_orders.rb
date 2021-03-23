class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.integer :total_price
      t.date :date 
      t.text :note
      t.references :user_id, null: false, foreing_key: true
      t.references :product_id, null: false, foreing_key: true

      t.timestamps
    end
  end
end
