class ProductSerializer < ActiveModel::Serializer
  belongs_to :store
  has_many :order_products
  has_many :orders, through: :order_products
  attributes :id, :name, :description, :category, :image, :price, :stock 

end
