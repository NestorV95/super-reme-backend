class OrderSerializer < ActiveModel::Serializer
  has_many :order_products
  has_many :products, through: :order_products
  attributes :id
end
