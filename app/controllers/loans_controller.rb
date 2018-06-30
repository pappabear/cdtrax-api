class LoansController < ApplicationController

    before_action :set_loan, only: [:show, :update, :destroy]
  
    # GET /loans
    def index
      @loans = Loan.all
      json_response(@loans)
    end
  
    # POST /loans
    def create
      @loan = Loan.create!(loan_params)
      json_response(@loan)
    end
  
    # GET /loans/:id
    def show
      json_response(@loan)
    end
  
    # PUT /loans/:id
    def update
      @loan.update(loan_params)
      head :no_content
    end
  
    # DELETE /loans/:id
    def destroy
      @loan.destroy
      head :no_content
    end
  
    private
  
    def loan_params
      # whitelist params
      params.permit(:id, :activity_dt, :purpose_code_id, :organization_id, :account_number, :loan_number, :loan_type_id, :call_code_id, :collateral_code_id, :lien_address, :lien_city, :lien_state, :lien_zip, :term, :is_cra_qualified, :is_3rd_party, :is_affiliate, :state_code, :county_code, :tract, :msa)
    end
  
    def set_loan
      @loan = Loan.find(params[:id])
    end

end
