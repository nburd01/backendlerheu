class DisciplinesController < ApplicationController
  before_action :set_discipline, only: %i[ show update destroy ]
  # before_action :add_header
  # before_action :is_admin, only: %i[ update create destroy]

  # GET /disciplines
  def index
    @disciplines = Discipline.all
    render json: @disciplines
  end

  # GET /disciplines/1
  def show
    render json: @discipline.as_json(include: {categories: {include: :teams
      } 
    } 
  )
    
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
      params.require(:discipline).permit(:name, :description, :discipline_img, :discipline_root, :posts)
    end
    

    def is_admin
      unless current_user.admin == true
        render json: { message: "Uh Oh, there was a problem" }, status: 400
      end
    end
    
end
