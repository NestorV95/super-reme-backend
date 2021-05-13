class Api::V1::ProductsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
  before_action :set_product, only: [:show]

  # GET /products
  def index
    # products = Product.all
    # token = encode_token(products: products )
    # render json: {products: ProductSerializer.new(products)}, status: :accepted
    render json: Product.all
  end

  # # # GET /products/1
  # def show
  #   render json: {product: ProductSerializer.new(product)}, status: :accepted
  # end

  private
    # # Use callbacks to share common setup or constraints between actions.
    def set_product
      product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:store_id, :name, :description, :category, :image, :price, :stock)
    end
end
