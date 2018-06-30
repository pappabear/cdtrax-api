class LoanTypesController < ApplicationController
    before_action :set_loan_type, only: [:show, :update, :destroy]
  
    # GET /loan_types
    def index
      @loan_types = LoanType.all
      json_response(@loan_types)
    end
  
    # POST /loan_types
    def create
      @loan_type = LoanType.create!(loan_type_params)
      json_response(@loan_type)
    end
  
    # GET /loan_types/:id
    def show
      json_response(@loan_type)
    end
  
    # PUT /loan_types/:id
    def update
      @loan_type.update(loan_type_params)
      head :no_content
    end
  
    # DELETE /loan_types/:id
    def destroy
      @loan_type.destroy
      head :no_content
    end
  
    private
  
    def loan_type_params
      # whitelist params
      params.permit(:id, :code, :description)
    end
  
    def set_loan_type
      @loan_type = LoanType.find(params[:id])
    end
end
  