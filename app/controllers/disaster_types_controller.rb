class DisasterTypesController < ApplicationController
    before_action :set_disaster_type, only: [:show, :update, :destroy]
  
    # GET /disaster_types
    def index
      @disaster_types = DisasterType.all
      json_response(@disaster_types)
    end
  
    # POST /disaster_types
    def create
      @disaster_type = DisasterType.create!(disaster_type_params)
      json_response(@disaster_type)
    end
  
    # GET /disaster_types/:id
    def show
      json_response(@disaster_type)
    end
  
    # PUT /disaster_types/:id
    def update
      @disaster_type.update(disaster_type_params)
      head :no_content
    end
  
    # DELETE /disaster_types/:id
    def destroy
      @disaster_type.destroy
      head :no_content
    end
  
    private
  
    def disaster_type_params
      # whitelist params
      params.permit(:code, :description)
    end
  
    def set_disaster_type
      @disaster_type = DisasterType.find(params[:id])
    end
end
  