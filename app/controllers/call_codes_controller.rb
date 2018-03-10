class CallCodesController < ApplicationController
    before_action :set_call_code, only: [:show, :update, :destroy]
  
    # GET /call_codes
    def index
      @call_codes = CallCode.all
      json_response(@call_codes)
    end
  
    # POST /call_codes
    def create
      @call_code = CallCode.create!(call_code_params)
      json_response(@call_code)
    end
  
    # GET /call_codes/:id
    def show
      json_response(@call_code)
    end
  
    # PUT /call_codes/:id
    def update
      @call_code.update(call_code_params)
      head :no_content
    end
  
    # DELETE /call_codes/:id
    def destroy
      @call_code.destroy
      head :no_content
    end
  
    private
  
    def call_code_params
      # whitelist params
      params.permit(:code, :description)
    end
  
    def set_call_code
      @call_code = CallCode.find(params[:id])
    end
end
  