class ParishesController < ApplicationController
  before_action :set_parish, only: [:show, :update, :destroy]

  # GET /parishes
  # GET /parishes.json
  def index
    @parishes = Parish.all

    render json: @parishes
  end

  # GET /parishes/1
  # GET /parishes/1.json
  def show
    render json: @parish
  end

  # POST /parishes
  # POST /parishes.json
  def create
    @parish = Parish.new(parish_params)

    if @parish.save
      render json: @parish, status: :created, location: @parish
    else
      render json: @parish.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parishes/1
  # PATCH/PUT /parishes/1.json
  def update
    @parish = Parish.find(params[:id])

    if @parish.update(parish_params)
      head :no_content
    else
      render json: @parish.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parishes/1
  # DELETE /parishes/1.json
  def destroy
    @parish.destroy

    head :no_content
  end

  private

    def set_parish
      @parish = Parish.find(params[:id])
    end

    def parish_params
      params.require(:parish).permit(:name)
    end
end
