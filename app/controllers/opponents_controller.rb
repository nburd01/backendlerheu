class OpponentsController < ApplicationController
  before_action :set_opponent, only: %i[ show update destroy ]
  # before_action :is_admin, only: %i[ update create destroy]

  # GET /opponents
  def index
    @opponents = Opponent.all

    render json: @opponents
  end

  # GET /opponents/1
  def show
    render json: @opponent
  end

  # POST /opponents
  def create
    @opponent = Opponent.new(opponent_params)

    if @opponent.save
      render json: @opponent, status: :created, location: @opponent
    else
      render json: @opponent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /opponents/1
  def update
    if @opponent.update(opponent_params)
      render json: @opponent
    else
      render json: @opponent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /opponents/1
  def destroy
    @opponent.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opponent
      @opponent = Opponent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def opponent_params
      params.fetch(:opponent, {})
    end

    def is_admin
      unless current_user.admin == true
        render json: { message: "Uh Oh, there was a problem" }, status: 400
      end
    end
end
