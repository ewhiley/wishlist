class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :buyer_id
      t.integer :seller_id
      t.integer :product_id
      t.decimal :price

      t.timestamps
    end
  end
end
