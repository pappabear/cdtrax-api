class LoansController < ApplicationController

    before_action :set_loan, only: [:update, :destroy]
  
    # GET /loans
    def index
      @loans = Loan.find_by_sql(get_view_sql + " order by activity_dt")
      json_response(@loans)
    end
  
    # POST /loans
    def create
      @loan = Loan.create!(loan_params)
      json_response(@loan)
    end
  
    # GET /loans/:id
    def show
      @loan = Loan.find_by_sql(get_view_sql + " where a.id=" + params[:id] + " LIMIT 1")
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
      params.permit(:id, :activity_dt, :purpose_code_id, :organization_id, :account_number, :loan_number, :loan_type_id, :call_code_id, :collateral_code_id, :lien_address, :lien_city, :lien_state, :lien_zip, :amount, :term, :is_cra_qualified, :is_3rd_party, :is_affiliate, :state_code, :county_code, :tract, :msa)
    end
  
    def set_loan
      @loan = Loan.find(params[:id])
    end


    def get_view_sql
      sql = "select a.id
              ,a.activity_dt
              ,TO_CHAR(a.activity_dt, 'MM/DD/YYYY') activity_dt_formatted 
              ,a.account_number, a.loan_number, a.lien_address, a.lien_city, a.lien_state, a.lien_zip, a.amount, a.term, a.is_cra_qualified, a.is_3rd_party, a.is_affiliate, a.state_code, a.county_code, a.tract, a.msa
              ,a.purpose_code_id
              ,b.description purpose_code_description
              ,a.organization_id
              ,d.name organization_name
              ,a.loan_type_id
              ,e.description loan_type_description
              ,a.call_code_id
              ,f.description call_code_description
              ,a.collateral_code_id
              ,g.description collateral_code_description
        from loans a
            left outer join purpose_codes b on a.purpose_code_id = b.id
            left outer join organizations d on a.organization_id = d.id
            left outer join loan_types e on a.loan_type_id = e.id
            left outer join call_codes f on a.call_code_id = f.id
            left outer join collateral_codes g on a.collateral_code_id = g.id"

      return sql
    end

end
