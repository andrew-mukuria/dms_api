class ArchdiocesesController < ApplicationController
  before_action :set_archdiocese, only: [:show, :update, :destroy]

  # GET /archdioceses
  # GET /archdioceses.json
  def index
    @archdioceses = Archdiocese.all

    render json: @archdioceses
  end

  # GET /archdioceses/1
  # GET /archdioceses/1.json
  def show
    render json: @archdiocese
  end

  # POST /archdioceses
  # POST /archdioceses.json
  def create
    @archdiocese = Archdiocese.new(archdiocese_params)

    if @archdiocese.save
      render json: @archdiocese, status: :created, location: @archdiocese
    else
      render json: @archdiocese.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /archdioceses/1
  # PATCH/PUT /archdioceses/1.json
  def update
    @archdiocese = Archdiocese.find(params[:id])

    if @archdiocese.update(archdiocese_params)
      head :no_content
    else
      render json: @archdiocese.errors, status: :unprocessable_entity
    end
  end

  # DELETE /archdioceses/1
  # DELETE /archdioceses/1.json
  def destroy
    @archdiocese.destroy

    head :no_content
  end

  private

    def set_archdiocese
      @archdiocese = Archdiocese.find(params[:id])
    end

    def archdiocese_params
      params.require(:archdiocese).permit(:name)
    end
end
