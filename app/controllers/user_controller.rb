class UserController < ApplicationController
  before_action :add_header

    def show
      @user = User.find(params[:id])
      response.headers['X-Total-Count'] = @user.size
      render json: @user
    end

    private

    def add_header
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
      headers['Access-Control-Allow-Credentials'] = 'true'
      headers['Access-Control-Expose-Headers'] = 'X-Total-Count'
    end
  
  end
  