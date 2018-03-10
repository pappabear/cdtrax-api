class AssessmentAreasController < ApplicationController
    before_action :set_assessment_area, only: [:show, :update, :destroy]
  
    # GET /assessment_areas
    def index
      @assessment_areas = AssessmentArea.all
      json_response(@assessment_areas)
    end
  
    # POST /assessment_areas
    def create
      @assessment_area = AssessmentArea.create!(assessment_area_params)
      json_response(@assessment_area)
    end
  
    # GET /assessment_areas/:id
    def show
      json_response(@assessment_area)
    end
  
    # PUT /assessment_areas/:id
    def update
      @assessment_area.update(assessment_area_params)
      head :no_content
    end
  
    # DELETE /assessment_areas/:id
    def destroy
      @assessment_area.destroy
      head :no_content
    end
  
    private
  
    def assessment_area_params
      # whitelist params
      params.permit(:code, :description)
    end
  
    def set_assessment_area
      @assessment_area = AssessmentArea.find(params[:id])
    end
end
  