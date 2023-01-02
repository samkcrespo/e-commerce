class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :boolean
end
