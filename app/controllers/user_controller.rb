class UserController < ApplicationController
  before_action :authenticate_user!, only: [:show, :update]

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = current_user.id
  end

end
