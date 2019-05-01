class AddWishlistIdToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :wishlist_id, :integer
  end
end
