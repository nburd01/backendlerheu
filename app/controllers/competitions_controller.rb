class CompetitionsController < ApplicationController
  before_action :set_competition, only: %i[ show update destroy ]
  # before_action :is_admin, only: %i[ update create destroy]

  # GET /competitions
  def index
    @competitions = Competition.all

    render json: @competitions
  end

  # GET /competitions/1
  def show
    render json: @competition
  end

  # POST /competitions
  def create
    @competition = Competition.new(competition_params)

    if @competition.save
      render json: @competition, status: :created, location: @competition
    else
      render json: @competition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /competitions/1
  def update
    if @competition.update(competition_params)
      render json: @competition
    else
      render json: @competition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /competitions/1
  def destroy
    @competition.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competition
      @competition = Competition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def competition_params
      params.fetch(:competition, {})
    end

    def is_admin
      unless current_user.admin == true
        render json: { message: "Uh Oh, there was a problem" }, status: 400
      end
    end
end
