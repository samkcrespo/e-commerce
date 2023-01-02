class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :isActive, :image
end
