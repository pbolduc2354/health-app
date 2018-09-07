module Api::V1
  class MedicalInformationsController < ApplicationController
    before_action :set_medical_information, only: [:show, :update, :destroy]

    # GET /medical_informations
    def index
      @medical_informations = MedicalInformation.all

      render json: @medical_informations
    end

    # GET /medical_informations/1
    def show
      render json: @medical_information
    end

    # POST /medical_informations
    def create
      @medical_information = MedicalInformation.new(medical_information_params)

      if @medical_information.save
        render json: @medical_information, status: :created, location: @medical_information
      else
        render json: @medical_information.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /medical_informations/1
    def update
      if @medical_information.update(medical_information_params)
        render json: @medical_information
      else
        render json: @medical_information.errors, status: :unprocessable_entity
      end
    end

    # DELETE /medical_informations/1
    def destroy
      @medical_information.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_medical_information
        @medical_information = MedicalInformation.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def medical_information_params
        params.require(:medical_information).permit(:data_type, :user_id)
      end
  end
end