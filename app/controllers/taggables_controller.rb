class TaggablesController < ApplicationController
  before_action :set_taggable, only: %i[ show update destroy ]

  # GET /taggables
  def index
    @taggables = Taggable.all

    render json: @taggables
  end

  # GET /taggables/1
  def show
    # render json: @taggable
    render json: @taggable.as_json(include: :discipline)
  end

  # POST /taggables
  def create
    @taggable = Taggable.new(taggable_params)

    if @taggable.save
      render json: @taggable, status: :created, location: @taggable
    else
      render json: @taggable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /taggables/1
  def update
    if @taggable.update(taggable_params)
      render json: @taggable
    else
      render json: @taggable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /taggables/1
  def destroy
    @taggable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taggable
      @taggable = Taggable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def taggable_params
      params.fetch(:taggable, {})
    end
end
