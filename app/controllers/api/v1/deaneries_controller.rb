module API
    module V1
        class DeaneriesController < ApplicationController
            before_filter :restrict_access
            before_action :set_deanery, only: [:show, :edit, :update, :destroy]

            # GET /deaneries
            # GET /deaneries.json
            def index
                @deaneries = Deanery.all
            end

            # GET /deaneries/1
            # GET /deaneries/1.json
            def show
            end

            # GET /deaneries/new
            def new
                @deanery = Deanery.new
            end

            # GET /deaneries/1/edit
            def edit
            end

            # POST /deaneries
            # POST /deaneries.json
            def create
                @deanery = Deanery.new(deanery_params)

                respond_to do |format|
                    if @deanery.save
                        format.html { redirect_to @deanery, notice: 'Deanery was successfully created.' }
                        format.json { render :show, status: :created, location: @deanery }
                    else
                        format.html { render :new }
                        format.json { render json: @deanery.errors, status: :unprocessable_entity }
                    end
                end
            end

            # PATCH/PUT /deaneries/1
            # PATCH/PUT /deaneries/1.json
            def update
                respond_to do |format|
                    if @deanery.update(deanery_params)
                        format.html { redirect_to @deanery, notice: 'Deanery was successfully updated.' }
                        format.json { render :show, status: :ok, location: @deanery }
                    else
                        format.html { render :edit }
                        format.json { render json: @deanery.errors, status: :unprocessable_entity }
                    end
                end
            end

            # DELETE /deaneries/1
            # DELETE /deaneries/1.json
            def destroy
                @deanery.destroy
                respond_to do |format|
                    format.html { redirect_to deaneries_url, notice: 'Deanery was successfully destroyed.' }
                    format.json { head :no_content }
                end
            end

            private
            # Use callbacks to share common setup or constraints between actions.
            def set_deanery
                @deanery = Deanery.find(params[:id])
            end

            # Never trust parameters from the scary internet, only allow the white list through.
            def deanery_params
                params[:deanery]
            end
        end
    end
end
