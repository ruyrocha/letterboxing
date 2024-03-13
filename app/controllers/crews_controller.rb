class CrewsController < ApplicationController
  before_action :set_crew, only: %i[ show edit update destroy ]

  # GET /crews
  def index
    @crews = Crew.all
  end

  # GET /crews/1
  def show
  end

  # GET /crews/new
  def new
    @crew = Crew.new
  end

  # GET /crews/1/edit
  def edit
  end

  # POST /crews
  def create
    @crew = Crew.new(crew_params)

    if @crew.save
      redirect_to @crew, notice: "Crew was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /crews/1
  def update
    if @crew.update(crew_params)
      redirect_to @crew, notice: "Crew was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /crews/1
  def destroy
    @crew.destroy!
    redirect_to crews_url, notice: "Crew was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew
      @crew = Crew.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crew_params
      params.require(:crew).permit(:movie_id, :role, :name)
    end
end
