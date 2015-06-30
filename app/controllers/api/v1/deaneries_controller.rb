module Api
  module V1
class DeaneriesController < ApplicationController
  before_action :set_deanery, only: [:show, :update, :destroy]

  # GET /deaneries
  # GET /deaneries.json
  def index
    @deaneries = Deanery.all

    render json: @deaneries
  end

  # GET /deaneries/1
  # GET /deaneries/1.json
  def show
    render json: @deanery
  end

  # POST /deaneries
  # POST /deaneries.json
  def create
    @deanery = Deanery.new(deanery_params)

    if @deanery.save
      render json: @deanery, status: :created, location: @deanery
    else
      render json: @deanery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /deaneries/1
  # PATCH/PUT /deaneries/1.json
  def update
    @deanery = Deanery.find(params[:id])

    if @deanery.update(deanery_params)
      head :no_content
    else
      render json: @deanery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /deaneries/1
  # DELETE /deaneries/1.json
  def destroy
    @deanery.destroy

    head :no_content
  end

  private

    def set_deanery
      @deanery = Deanery.find(params[:id])
    end

    def deanery_params
      params.require(:deanery).permit(:name)
    end
end
end
end
