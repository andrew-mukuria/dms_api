module API
    module V1
        class ArchdiocesesController < ApplicationController
            before_filter :restrict_access
            before_action :set_archdiocese, only: [:show, :edit, :update, :destroy]

            # GET /archdioceses
            # GET /archdioceses.json
            def index
                @archdioceses = Archdiocese.all
            end

            # GET /archdioceses/1
            # GET /archdioceses/1.json
            def show
            end

            # GET /archdioceses/new
            def new
                @archdiocese = Archdiocese.new
            end

            # GET /archdioceses/1/edit
            def edit
            end

            # POST /archdioceses
            # POST /archdioceses.json
            def create
                @archdiocese = Archdiocese.new(archdiocese_params)

                respond_to do |format|
                    if @archdiocese.save
                        format.html { redirect_to @archdiocese, notice: 'Archdiocese was successfully created.' }
                        format.json { render :show, status: :created, location: @archdiocese }
                    else
                        format.html { render :new }
                        format.json { render json: @archdiocese.errors, status: :unprocessable_entity }
                    end
                end
            end

            # PATCH/PUT /archdioceses/1
            # PATCH/PUT /archdioceses/1.json
            def update
                respond_to do |format|
                    if @archdiocese.update(archdiocese_params)
                        format.html { redirect_to @archdiocese, notice: 'Archdiocese was successfully updated.' }
                        format.json { render :show, status: :ok, location: @archdiocese }
                    else
                        format.html { render :edit }
                        format.json { render json: @archdiocese.errors, status: :unprocessable_entity }
                    end
                end
            end

            # DELETE /archdioceses/1
            # DELETE /archdioceses/1.json
            def destroy
                @archdiocese.destroy
                respond_to do |format|
                    format.html { redirect_to archdioceses_url, notice: 'Archdiocese was successfully destroyed.' }
                    format.json { head :no_content }
                end
            end

            private
            # Use callbacks to share common setup or constraints between actions.
            def set_archdiocese
                @archdiocese = Archdiocese.find(params[:id])
            end

            # Never trust parameters from the scary internet, only allow the white list through.
            def archdiocese_params
                params[:archdiocese]
            end
        end
    end
end
