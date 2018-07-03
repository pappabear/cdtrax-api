class ServicesController < ApplicationController

    before_action :set_service, only: [:update, :destroy]
  
    # GET /services
    def index
      @services = Service.find_by_sql(get_view_sql + " order by activity_dt")
      json_response(@services)
    end
  
    # POST /services
    def create
      @service = Service.create!(service_params)
      json_response(@service)
    end
  
    # GET /services/:id
    def show
      @service = Service.find_by_sql(get_view_sql + " where a.id=" + params[:id] + " LIMIT 1")
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

    def get_view_sql
      sql = "select a.id
              ,a.activity_dt
              ,TO_CHAR(a.activity_dt, 'MM/DD/YYYY') activity_dt_formatted 
              ,a.total_hours
              ,a.cra_hours
              ,a.purpose_code_id
              ,b.description purpose_code_description
              ,a.volunteer_id
              ,c.name employee_name, c.title employee_title 
              ,a.organization_id
              ,d.name organization_name
              ,a.service_type_id
              ,e.description service_type_description
              ,a.assessment_area_id
              ,f.description assessment_area_description
        from services a
            left outer join purpose_codes b on a.purpose_code_id = b.id
            left outer join volunteers c on a.volunteer_id = c.id
            left outer join organizations d on a.organization_id = d.id
            left outer join service_types e on a.service_type_id = e.id
            left outer join assessment_areas f on a.assessment_area_id = f.id"

      return sql
    end

end
