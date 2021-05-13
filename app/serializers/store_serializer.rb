class StoreSerializer < ActiveModel::Serializer
  has_many :products
  attributes :id
end
