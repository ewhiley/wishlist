class Product < ApplicationRecord
  # belongs_to :user
  has_many_attached :images, dependent: :destroy
  # has_many :product_categories
  # has_many :categories, through: :product_categories
  # validates :user_id, presence: true
end
