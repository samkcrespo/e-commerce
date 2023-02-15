class SelectedItem < ApplicationRecord
    belongs_to :sku
    belongs_to :cart, optional: true
    belongs_to :order, optional: true

    validates :quantity, {presence: true }
end
