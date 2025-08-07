class CreatePurchases < ActiveRecord::Migration[7.1]
  def change
    create_table :purchases do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :unit_price
      t.decimal :total_price
      t.date :purchase_date

      t.timestamps
    end
  end
end
