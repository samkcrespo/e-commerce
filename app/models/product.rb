class Product < ApplicationRecord
    has_many :product_categories, dependent: :destroy
    has_many :categories, through: :product_categories
    has_many :skus, dependent: :destroy
    
    validates :title, {presence: true}
end
