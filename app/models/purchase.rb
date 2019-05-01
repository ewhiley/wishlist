class Purchase < ApplicationRecord
  has_one :buyer_id, :class_name => "User"
  has_one :seller_id, :class_name => "User"
  has_one :product
end
