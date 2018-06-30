class AssessmentAreasController < ApplicationController
  
    before_action :set_assessment_area, only: [:show, :update, :destroy]
  
    # GET /assessment_areas
    def index
      #@assessment_areas = AssessmentArea.all.order('bank_id')
      @assessment_areas = AssessmentArea.find_by_sql("select a.*, b.description as bank_description from assessment_areas a, banks b where a.bank_id = b.id")
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
      params.permit(:id, :code, :description, :bank_id)
    end
  
    def set_assessment_area
      @assessment_area = AssessmentArea.find(params[:id])
    end
end
  