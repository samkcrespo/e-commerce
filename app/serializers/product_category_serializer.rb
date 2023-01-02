class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id
  has_one :category
  has_one :products
end
