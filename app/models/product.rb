class Product < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :user
  has_many :line_items
  has_many_attached :photos

  # validar que todos lo campos no esten vacios al crear
  validates :name, :original_price, :discount, :stock, :photos, presence: true

  # validacion para :name
  validates :name, length: { minimum: 10, too_short: "Debe de tener más de 10 caracteres" }

  # validacion para :original_price
  validates :original_price, numericality: { only_float: true }
  validates :original_price, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 9999 }

  # validacion para :discount
  validates :discount, numericality: { only_integer: true }
  validates :discount, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }

  # validacion para :stock
  validates :stock, numericality: { only_integer: true }
  validates :stock, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 9999 }

  # validacion para :description
  # validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
  # validates :description, presence: true
end
