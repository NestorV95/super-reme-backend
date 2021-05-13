class Api::V1::StoresController < ApplicationController
  before_action :set_store, only: [:show]

  # GET /stores
  def index
    stores = Store.all

    render json: stores
  end

  # GET /stores/1
  def show
    render json: store
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      store = Store.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_params
      params.require(:store).permit(:name, :address, :city, :zip, :phone, :email)
    end
end
