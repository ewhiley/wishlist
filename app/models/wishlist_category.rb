class WishlistCategory < ApplicationRecord
  belongs_to :wishlist
  belongs_to :category
end
