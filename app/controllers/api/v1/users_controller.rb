class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  # def index
  #   users = User.all

  #   render json: users
  # end

  # GET /users/1
  def show
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  # POST /users
  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token(user_id: user.id)
      render json: {user: UserSerializer.new(user),jwt: token}, status: :created #, location: user
    else
      render json: {error: user.errors.messages}, status: :not_acceptable
    end
  end

  # PATCH/PUT /users/1
  def update
    if user.update(user_params)
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
    end
end
