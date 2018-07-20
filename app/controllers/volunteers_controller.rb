class VolunteersController < ApplicationController

    before_action :set_volunteer, only: [:show, :update, :destroy]
  
    # GET /volunteers
    def index
      @volunteers = Volunteer.find_by_sql(get_view_sql)
      json_response(@volunteers)
    end
  
    # POST /volunteers
    def create
      @volunteer = Volunteer.create!(volunteer_params)
      json_response(@volunteer)
    end
  
    # GET /volunteers/:id
    def show
      sql = "select a.*, sum(b.total_hours) total_hours, sum(b.cra_hours) cra_hours
            from volunteers a, services b
            where a.id = b.volunteer_id and a.id=" + params[:id] + " group by a.id"
      @volunteer = Volunteer.find_by_sql(sql)
      json_response(@volunteer)
    end
  
    # PUT /volunteers/:id
    def update
      @volunteer.update(volunteer_params)
      head :no_content
    end
  
    # DELETE /volunteers/:id
    def destroy
      @volunteer.destroy
      head :no_content
    end

  
    private

  
    def volunteer_params
      # whitelist params
      params.permit(:id, :employee_code, :name, :title)
    end
  
    def set_volunteer
      @volunteer = Volunteer.find(params[:id])
    end

    def get_view_sql
      sql = "select a.*, sum(b.total_hours) total_hours, sum(b.cra_hours) cra_hours
            from volunteers a, services b
            where a.id = b.volunteer_id
            group by a.id"
      return sql
    end
end
