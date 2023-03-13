class UserSerializer < ActiveModel::Serializer
  attributes :id, :isAdmin, :email, :username, :first_name, :last_name, :address
  has_many :orders
end
