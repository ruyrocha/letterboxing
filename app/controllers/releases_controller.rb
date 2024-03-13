# frozen_string_literal: true

class ReleasesController < ApplicationController
  before_action :set_release, only: [:show, :edit, :update, :destroy]

  # GET /releases
  def index
    @releases = Release.all.limit(300)
  end

  # GET /releases/1
  def show
  end

  # GET /releases/new
  def new
    @release = Release.new
  end

  # GET /releases/1/edit
  def edit
  end

  # POST /releases
  def create
    @release = Release.new(release_params)

    if @release.save
      redirect_to(@release, notice: "Release was successfully created.")
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  # PATCH/PUT /releases/1
  def update
    if @release.update(release_params)
      redirect_to(@release, notice: "Release was successfully updated.", status: :see_other)
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  # DELETE /releases/1
  def destroy
    @release.destroy!
    redirect_to(releases_url, notice: "Release was successfully destroyed.", status: :see_other)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_release
    @release = Release.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def release_params
    params.require(:release).permit(:movie_id, :country, :date, :type, :rating)
  end
end
