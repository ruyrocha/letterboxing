# frozen_string_literal: true

class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]

  # GET /countries
  def index
    @countries = Country.all.limit(300)
  end

  # GET /countries/1
  def show
  end

  # GET /countries/new
  def new
    @country = Country.new
  end

  # GET /countries/1/edit
  def edit
  end

  # POST /countries
  def create
    @country = Country.new(country_params)

    if @country.save
      redirect_to(@country, notice: "Country was successfully created.")
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  # PATCH/PUT /countries/1
  def update
    if @country.update(country_params)
      redirect_to(@country, notice: "Country was successfully updated.", status: :see_other)
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  # DELETE /countries/1
  def destroy
    @country.destroy!
    redirect_to(countries_url, notice: "Country was successfully destroyed.", status: :see_other)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_country
    @country = Country.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def country_params
    params.require(:country).permit(:movie_id, :name)
  end
end
