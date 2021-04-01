class CreateAmounts < ActiveRecord::Migration[6.1]
  def change
    create_table :amounts do |t|
      t.references :product, null: false, foreing_key: true
      t.references :user, null: false, foreing_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
