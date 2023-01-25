class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_preview
end
