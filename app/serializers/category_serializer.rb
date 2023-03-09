class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_preview
  has_many :products
end
