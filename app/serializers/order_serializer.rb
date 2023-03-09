class OrderSerializer < ActiveModel::Serializer
  attributes :id, :address, :status, :invoice, :email, :name
  has_one :user
  has_many :selected_items
end
