class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  # GET /products
  def index
    products = Product.all

    render json: products
  end

  # # GET /products/1
  def show
    render json: product
  end

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
