class InvestmentTypesController < ApplicationController
    before_action :set_investment_type, only: [:show, :update, :destroy]
  
    # GET /investment_types
    def index
      @investment_types = InvestmentType.all
      json_response(@investment_types)
    end
  
    # POST /investment_types
    def create
      @investment_type = InvestmentType.create!(investment_type_params)
      json_response(@investment_type)
    end
  
    # GET /investment_types/:id
    def show
      json_response(@investment_type)
    end
  
    # PUT /investment_types/:id
    def update
      @investment_type.update(investment_type_params)
      head :no_content
    end
  
    # DELETE /investment_types/:id
    def destroy
      @investment_type.destroy
      head :no_content
    end
  
    private
  
    def investment_type_params
      # whitelist params
      params.permit(:code, :description)
    end
  
    def set_investment_type
      @investment_type = InvestmentType.find(params[:id])
    end
end
  