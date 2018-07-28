class OrganizationsController < ApplicationController

    before_action :set_organization, only: [:show, :update, :destroy]
  
    # GET /organizations
    def index
      @organizations = Organization.find_by_sql(get_view_sql)
      json_response(@organizations)
    end
  
    # POST /organizations
    def create
      @organization = Organization.create!(organization_params)
      json_response(@organization)
    end
  
    # GET /organizations/:id
    def show
      @organization = Organization.find_by_sql(get_view_sql + " where id=" + params[:id] + " LIMIT 1")
      json_response(@organization)
    end
  
    # PUT /organizations/:id
    def update
      @organization.update(organization_params)
      head :no_content
    end
  
    # DELETE /organizations/:id
    def destroy
      @organization.destroy
      head :no_content
    end
  
  
    private
  
  
    def organization_params
      # whitelist params
      params.permit(:id, :name, :address, :city, :state, :zip, :phone, :website, :revenue, :number_of_employees)
    end
  
    def set_organization
      @organization = Organization.find(params[:id])
    end

    def get_view_sql
      sql = "select *, concat_ws(', ', address, city, state, zip) as formatted_address from organizations"
      return sql
    end

end
