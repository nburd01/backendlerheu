class UserController < ApplicationController
  before_action :authenticate_user!, only: [:update]
  
  def index
    @users = user.all
    response.headers['X-Total-Count'] = @users.size
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = user.find(params[:id])
  end

  def user_params
    params.fetch(:user, {})
  end
  
end
