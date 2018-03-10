class AssistanceTypesController < ApplicationController
    before_action :set_assistance_type, only: [:show, :update, :destroy]
  
    # GET /assistance_types
    def index
      @assistance_types = AssistanceType.all
      json_response(@assistance_types)
    end
  
    # POST /assistance_types
    def create
      @assistance_type = AssistanceType.create!(assistance_type_params)
      json_response(@assistance_type)
    end
  
    # GET /assistance_types/:id
    def show
      json_response(@assistance_type)
    end
  
    # PUT /assistance_types/:id
    def update
      @assistance_type.update(assistance_type_params)
      head :no_content
    end
  
    # DELETE /assistance_types/:id
    def destroy
      @assistance_type.destroy
      head :no_content
    end
  
    private
  
    def assistance_type_params
      # whitelist params
      params.permit(:code, :description)
    end
  
    def set_assistance_type
      @assistance_type = AssistanceType.find(params[:id])
    end
end
  