class OrderSerializer < ActiveModel::Serializer
  attributes :id, :address, :status, :invoice, :email, :name
  has_one :user
end
