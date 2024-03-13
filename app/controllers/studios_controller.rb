# frozen_string_literal: true

class StudiosController < ApplicationController
  before_action :set_studio, only: [:show, :edit, :update, :destroy]

  # GET /studios
  def index
    @studios = Studio.all.limit(300)
  end

  # GET /studios/1
  def show
  end

  # GET /studios/new
  def new
    @studio = Studio.new
  end

  # GET /studios/1/edit
  def edit
  end

  # POST /studios
  def create
    @studio = Studio.new(studio_params)

    if @studio.save
      redirect_to(@studio, notice: "Studio was successfully created.")
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  # PATCH/PUT /studios/1
  def update
    if @studio.update(studio_params)
      redirect_to(@studio, notice: "Studio was successfully updated.", status: :see_other)
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  # DELETE /studios/1
  def destroy
    @studio.destroy!
    redirect_to(studios_url, notice: "Studio was successfully destroyed.", status: :see_other)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_studio
    @studio = Studio.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def studio_params
    params.require(:studio).permit(:movie_id, :name)
  end
end
