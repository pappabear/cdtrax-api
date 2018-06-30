class PurposeCodesController < ApplicationController
    before_action :set_purpose_code, only: [:show, :update, :destroy]
  
    # GET /purpose_codes
    def index
      @purpose_codes = PurposeCode.all
      json_response(@purpose_codes)
    end
  
    # POST /purpose_codes
    def create
      @purpose_code = PurposeCode.create!(purpose_code_params)
      json_response(@purpose_code)
    end
  
    # GET /purpose_codes/:id
    def show
      json_response(@purpose_code)
    end
  
    # PUT /purpose_codes/:id
    def update
      @purpose_code.update(purpose_code_params)
      head :no_content
    end
  
    # DELETE /purpose_codes/:id
    def destroy
      @purpose_code.destroy
      head :no_content
    end
  
    private
  
    def purpose_code_params
      # whitelist params
      params.permit(:id, :code, :description)
    end
  
    def set_purpose_code
      @purpose_code = PurposeCode.find(params[:id])
    end
end
  