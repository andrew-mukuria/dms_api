class DiocesesController < ApplicationController
  before_action :set_diocese, only: [:show, :update, :destroy]

  # GET /dioceses
  # GET /dioceses.json
  def index
    @dioceses = Diocese.all

    render json: @dioceses
  end

  # GET /dioceses/1
  # GET /dioceses/1.json
  def show
    render json: @diocese
  end

  # POST /dioceses
  # POST /dioceses.json
  def create
    @diocese = Diocese.new(diocese_params)

    if @diocese.save
      render json: @diocese, status: :created, location: @diocese
    else
      render json: @diocese.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dioceses/1
  # PATCH/PUT /dioceses/1.json
  def update
    @diocese = Diocese.find(params[:id])

    if @diocese.update(diocese_params)
      head :no_content
    else
      render json: @diocese.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dioceses/1
  # DELETE /dioceses/1.json
  def destroy
    @diocese.destroy

    head :no_content
  end

  private

    def set_diocese
      @diocese = Diocese.find(params[:id])
    end

    def diocese_params
      params.require(:diocese).permit(:name)
    end
end
