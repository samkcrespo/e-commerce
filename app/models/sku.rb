class Sku < ApplicationRecord
    belongs_to :product
    has_many :selected_items, dependent: :destroy
  
end
