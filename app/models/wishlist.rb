class Wishlist < ApplicationRecord
  belongs_to :user
  has_many_attached :images, dependent: :destroy
  has_many :wishlist_categories
  has_many :categories, through: :wishlist_categories
  validates :user_id, presence: true
end
