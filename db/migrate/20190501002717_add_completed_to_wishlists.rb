class AddCompletedToWishlists < ActiveRecord::Migration[5.2]
  def change
    add_column :wishlists, :completed, :boolean, default: false
  end
end
