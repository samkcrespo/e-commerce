class Order < ApplicationRecord
  belongs_to :user
  has_many :selected_items, dependent: :destroy
end
