class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :line_items
  has_many_attached :photos
end
