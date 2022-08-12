class DisciplinesController < ApplicationController
  before_action :set_discipline, only: %i[ show update destroy ]
  before_action :add_header

  # GET /disciplines
  def index
    @disciplines = Discipline.all
    response.headers['X-Total-Count'] = @disciplines.size
    render json: @disciplines
  end

  # GET /disciplines/1
  def show
    render json: @discipline
  end

  # POST /disciplines
  def create
    @discipline = Discipline.new(discipline_params)

    if @discipline.save
      render json: @discipline, status: :created, location: @discipline
    else
      render json: @discipline.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /disciplines/1
  def update
    if @discipline.update(discipline_params)
      render json: @discipline
    else
      render json: @discipline.errors, status: :unprocessable_entity
    end
  end

  # DELETE /disciplines/1
  def destroy
    @discipline.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discipline
      @discipline = Discipline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def discipline_params
      params.fetch(:discipline, {})
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
