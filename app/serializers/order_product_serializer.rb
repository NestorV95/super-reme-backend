class OrderProductSerializer < ActiveModel::Serializer
  belongs_to :order
  belongs_to :product
  attributes :id
end
