class VolunteersController < ApplicationController

    before_action :set_volunteer, only: [:show, :update, :destroy]
  
    # GET /volunteers
    def index
      @volunteers = Volunteer.all
      json_response(@volunteers)
    end
  
    # POST /volunteers
    def create
      @volunteer = Volunteer.create!(volunteer_params)
      json_response(@volunteer)
    end
  
    # GET /volunteers/:id
    def show
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

end
