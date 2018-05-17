class ActivityTypesController < ApplicationController

  # GET /activity_types
  def index
    @activity_types = ActivityType.all
    json_response(@activity_types)
  end

  # POST /activity_types
  def create
    @activity_type = ActivityType.create!(activity_type_params)
    json_response(@activity_type)
  end

  private

  def activity_type_params
    # whitelist params
    params.permit(:description)
  end

end
