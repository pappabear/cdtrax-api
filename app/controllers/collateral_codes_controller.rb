class CollateralCodesController < ApplicationController
    before_action :set_collateral_code, only: [:show, :update, :destroy]
  
    # GET /collateral_codes
    def index
      @collateral_codes = CollateralCode.all
      json_response(@collateral_codes)
    end
  
    # POST /collateral_codes
    def create
      @collateral_code = CollateralCode.create!(collateral_code_params)
      json_response(@collateral_code)
    end
  
    # GET /collateral_codes/:id
    def show
      json_response(@collateral_code)
    end
  
    # PUT /collateral_codes/:id
    def update
      @collateral_code.update(collateral_code_params)
      head :no_content
    end
  
    # DELETE /collateral_codes/:id
    def destroy
      @collateral_code.destroy
      head :no_content
    end
  
    private
  
    def collateral_code_params
      # whitelist params
      params.permit(:id, :code, :description)
    end
  
    def set_collateral_code
      @collateral_code = CollateralCode.find(params[:id])
    end
end
  