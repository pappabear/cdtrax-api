class DeclarationTypesController < ApplicationController
    before_action :set_declaration_type, only: [:show, :update, :destroy]
  
    # GET /declaration_types
    def index
      @declaration_types = DeclarationType.all
      json_response(@declaration_types)
    end
  
    # POST /declaration_types
    def create
      @declaration_type = DeclarationType.create!(declaration_type_params)
      json_response(@declaration_type)
    end
  
    # GET /declaration_types/:id
    def show
      json_response(@declaration_type)
    end
  
    # PUT /declaration_types/:id
    def update
      @declaration_type.update(declaration_type_params)
      head :no_content
    end
  
    # DELETE /declaration_types/:id
    def destroy
      @declaration_type.destroy
      head :no_content
    end
  
    private
  
    def declaration_type_params
      # whitelist params
      params.permit(:code, :description)
    end
  
    def set_declaration_type
      @declaration_type = DeclarationType.find(params[:id])
    end
end
  