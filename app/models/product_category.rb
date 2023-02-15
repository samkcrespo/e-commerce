class ProductCategory < ApplicationRecord
  belongs_to :category
  belongs_to :product

  validates :product_id, {presence: true }
  validates :category_id, {presence: true }
end
