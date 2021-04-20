class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.integer :price_4
      t.integer :price_8
      t.integer :price_12

      t.timestamps
    end
  end
end
