class ServicesController < ApplicationController

    before_action :set_service, only: [:show, :update, :destroy]
  
    # GET /services
    def index
      @services = Service.all
      json_response(@services)
    end
  
    # POST /services
    def create
      @service = Service.create!(service_params)
      json_response(@service)
    end
  
    # GET /services/:id
    def show
      json_response(@service)
    end
  
    # PUT /services/:id
    def update
      @service.update(service_params)
      head :no_content
    end
  
    # DELETE /services/:id
    def destroy
      @service.destroy
      head :no_content
    end
  
    private
  
    def service_params
      # whitelist params
      params.permit(:id, :activity_dt, :purpose_code_id, :volunteer_id, :organization_id, :service_type_id, :assessment_area_id, :total_hours, :cra_hours)
    end
  
    def set_service
      @service = Service.find(params[:id])
    end

end
