class UserController < ApplicationController
  before_action :add_header

  def show
    respond_to do |format|
      if User.exists?(params[:id])
        @user = User.find(params[:id])
        format.html
      else
        set_user
        format.html {redirect_to @user, notice: 'User does not exist' }
      end
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :second_name, :email)
  end

  def add_header
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    headers['Access-Control-Allow-Credentials'] = 'true'
    headers['Access-Control-Expose-Headers'] = 'X-Total-Count'
  end
end
  