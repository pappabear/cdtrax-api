class EntitiesController < ApplicationController
    before_action :set_entity, only: [:show, :update, :destroy]
  
    # GET /entities
    def index
      @entities = Entity.all
      json_response(@entities)
    end
  
    # POST /entitys
    def create
      @entity = Entity.create!(entity_params)
      json_response(@entity)
    end
  
    # GET /entitys/:id
    def show
      json_response(@entity)
    end
  
    # PUT /entitys/:id
    def update
      @entity.update(entity_params)
      head :no_content
    end
  
    # DELETE /entitys/:id
    def destroy
      @entity.destroy
      head :no_content
    end
  
    private
  
    def entity_params
      # whitelist params
      params.permit(:name, :address, :city, :state, :zip, :phone, :mission, :number_of_employees, :revenue, :website)
    end
  
    def set_entity
      @entity = Entity.find(params[:id])
    end
end
  