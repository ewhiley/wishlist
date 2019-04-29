class Wishlist < ApplicationRecord
  belongs_to :user
  has_many_attached :images, dependent: :destroy
  has_many :request_categories
  has_many :categories, through: :request_categories
  validates :user_id, presence: true
end
