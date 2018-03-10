class EntityGroupsController < ApplicationController
    before_action :set_entity_group, only: [:show, :update, :destroy]
  
    # GET /entity_groups
    def index
      @entity_groups = EntityGroup.all
      json_response(@entity_groups)
    end
  
    # POST /entity_groups
    def create
      @entity_group = EntityGroup.create!(entity_group_params)
      json_response(@entity_group)
    end
  
    # GET /entity_groups/:id
    def show
      json_response(@entity_group)
    end
  
    # PUT /entity_groups/:id
    def update
      @entity_group.update(entity_group_params)
      head :no_content
    end
  
    # DELETE /entity_groups/:id
    def destroy
      @entity_group.destroy
      head :no_content
    end
  
    private
  
    def entity_group_params
      # whitelist params
      params.permit(:code, :description)
    end
  
    def set_entity_group
      @entity_group = EntityGroup.find(params[:id])
    end
end
  