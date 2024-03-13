# frozen_string_literal: true

class ActorsController < ApplicationController
  before_action :set_actor, only: [:show, :edit, :update, :destroy]

  # GET /actors
  def index
    @actors = Actor.all.limit(300)
  end

  # GET /actors/1
  def show
  end

  # GET /actors/new
  def new
    @actor = Actor.new
  end

  # GET /actors/1/edit
  def edit
  end

  # POST /actors
  def create
    @actor = Actor.new(actor_params)

    if @actor.save
      redirect_to(@actor, notice: "Actor was successfully created.")
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  # PATCH/PUT /actors/1
  def update
    if @actor.update(actor_params)
      redirect_to(@actor, notice: "Actor was successfully updated.", status: :see_other)
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  # DELETE /actors/1
  def destroy
    @actor.destroy!
    redirect_to(actors_url, notice: "Actor was successfully destroyed.", status: :see_other)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_actor
    @actor = Actor.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def actor_params
    params.require(:actor).permit(:movie_id, :name)
  end
end
