class InvestmentsController < ApplicationController


    before_action :set_investment, only: [:show, :update, :destroy]
  
    # GET /investments
    def index
      @investments = Investment.all
      json_response(@investments)
    end
  
    # POST /investments
    def create
      @investment = Investment.create!(investment_params)
      json_response(@investment)
    end
  
    # GET /investments/:id
    def show
      json_response(@investment)
    end
  
    # PUT /investments/:id
    def update
      @investment.update(investment_params)
      head :no_content
    end
  
    # DELETE /investments/:id
    def destroy
      @investment.destroy
      head :no_content
    end
  
    private
  
    def investment_params
      # whitelist params
      params.permit(:id, :activity_dt, :purpose_code_id, :organization_id, :investment_type_id, :cusip_number, :maturity_dt, :original_amount, :book_value, :unfunded_committment, :percent_of_entity_funding)
    end
  
    def set_investment
      @investment = Investment.find(params[:id])
    end

    
end
